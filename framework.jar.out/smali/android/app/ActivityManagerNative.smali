.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 1779
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 126
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 75
    if-nez p0, :cond_1

    .line 76
    const/4 v0, 0x0

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 80
    .local v0, in:Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 84
    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0           #in:Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 12
    .parameter "intent"
    .parameter "permission"

    .prologue
    .line 111
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Binder;->getOrigCallingUser()I

    move-result v11

    move-object v2, p0

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 101
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "ps"

    .prologue
    .line 120
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1776
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 186
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
    .line 131
    sparse-switch p1, :sswitch_data_0

    .line 1772
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 134
    :sswitch_0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 136
    .local v101, b:Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 137
    .local v6, app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 138
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 140
    .local v9, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 141
    .local v10, resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 142
    .local v11, requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 143
    .local v12, startFlags:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 144
    .local v13, profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .line 146
    .local v14, profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .local v15, options:Landroid/os/Bundle;
    :goto_2
    move-object/from16 v5, p0

    .line 148
    invoke-virtual/range {v5 .. v15}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v162

    .line 151
    .local v162, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    move-object/from16 v0, p3

    move/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v5, 0x1

    goto :goto_0

    .line 144
    .end local v14           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v15           #options:Landroid/os/Bundle;
    .end local v162           #result:I
    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    .line 146
    .restart local v14       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/4 v15, 0x0

    goto :goto_2

    .line 158
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v12           #startFlags:I
    .end local v13           #profileFile:Ljava/lang/String;
    .end local v14           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v101           #b:Landroid/os/IBinder;
    :sswitch_1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 160
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 161
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 162
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 163
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 164
    .restart local v9       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 165
    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 166
    .restart local v11       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 167
    .restart local v12       #startFlags:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 168
    .restart local v13       #profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    .line 170
    .restart local v14       #profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_4
    move-object/from16 v5, p0

    .line 172
    invoke-virtual/range {v5 .. v15}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)Landroid/app/IActivityManager$WaitResult;

    move-result-object v162

    .line 175
    .local v162, result:Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    const/4 v5, 0x0

    move-object/from16 v0, v162

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 177
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 168
    .end local v14           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v15           #options:Landroid/os/Bundle;
    .end local v162           #result:Landroid/app/IActivityManager$WaitResult;
    :cond_2
    const/4 v14, 0x0

    goto :goto_3

    .line 170
    .restart local v14       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v15, 0x0

    goto :goto_4

    .line 182
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v12           #startFlags:I
    .end local v13           #profileFile:Ljava/lang/String;
    .end local v14           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v101           #b:Landroid/os/IBinder;
    :sswitch_2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 184
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 185
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 186
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 187
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 188
    .restart local v9       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 189
    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 190
    .restart local v11       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 191
    .restart local v12       #startFlags:I
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/Configuration;

    .line 192
    .local v24, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_5
    move-object/from16 v16, p0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v12

    move-object/from16 v25, v15

    .line 194
    invoke-virtual/range {v16 .. v25}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;)I

    move-result v162

    .line 196
    .local v162, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    move-object/from16 v0, p3

    move/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 192
    .end local v15           #options:Landroid/os/Bundle;
    .end local v162           #result:I
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .line 203
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v12           #startFlags:I
    .end local v24           #config:Landroid/content/res/Configuration;
    .end local v101           #b:Landroid/os/IBinder;
    :sswitch_3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 205
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 206
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    .line 207
    .local v7, intent:Landroid/content/IntentSender;
    const/16 v28, 0x0

    .line 208
    .local v28, fillInIntent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 209
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    .end local v28           #fillInIntent:Landroid/content/Intent;
    check-cast v28, Landroid/content/Intent;

    .line 211
    .restart local v28       #fillInIntent:Landroid/content/Intent;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 212
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 213
    .restart local v9       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 214
    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 215
    .restart local v11       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 216
    .local v33, flagsMask:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 217
    .local v34, flagsValues:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_6
    move-object/from16 v25, p0

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    move/from16 v32, v11

    move-object/from16 v35, v15

    .line 219
    invoke-virtual/range {v25 .. v35}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v162

    .line 222
    .restart local v162       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    move-object/from16 v0, p3

    move/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 217
    .end local v15           #options:Landroid/os/Bundle;
    .end local v162           #result:I
    :cond_6
    const/4 v15, 0x0

    goto :goto_6

    .line 229
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/IntentSender;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v28           #fillInIntent:Landroid/content/Intent;
    .end local v33           #flagsMask:I
    .end local v34           #flagsValues:I
    .end local v101           #b:Landroid/os/IBinder;
    :sswitch_4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v105

    .line 231
    .local v105, callingActivity:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 232
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .line 234
    .restart local v15       #options:Landroid/os/Bundle;
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v1, v7, v15}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v162

    .line 235
    .local v162, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v162, :cond_8

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 232
    .end local v15           #options:Landroid/os/Bundle;
    .end local v162           #result:Z
    :cond_7
    const/4 v15, 0x0

    goto :goto_7

    .line 236
    .restart local v15       #options:Landroid/os/Bundle;
    .restart local v162       #result:Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    .line 241
    .end local v7           #intent:Landroid/content/Intent;
    .end local v15           #options:Landroid/os/Bundle;
    .end local v105           #callingActivity:Landroid/os/IBinder;
    .end local v162           #result:Z
    :sswitch_5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 243
    .local v49, token:Landroid/os/IBinder;
    const/16 v41, 0x0

    .line 244
    .local v41, resultData:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 245
    .local v40, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 246
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #resultData:Landroid/content/Intent;
    check-cast v41, Landroid/content/Intent;

    .line 248
    .restart local v41       #resultData:Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    move-result v161

    .line 249
    .local v161, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    if-eqz v161, :cond_a

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 250
    :cond_a
    const/4 v5, 0x0

    goto :goto_9

    .line 255
    .end local v40           #resultCode:I
    .end local v41           #resultData:Landroid/content/Intent;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v161           #res:Z
    :sswitch_6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 257
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 258
    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 259
    .restart local v11       #requestCode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v10, v11}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 265
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 267
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v161

    .line 268
    .restart local v161       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v161, :cond_b

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 269
    :cond_b
    const/4 v5, 0x0

    goto :goto_a

    .line 274
    .end local v49           #token:Landroid/os/IBinder;
    .end local v161           #res:Z
    :sswitch_8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 276
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v161

    .line 277
    .restart local v161       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    if-eqz v161, :cond_c

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 278
    :cond_c
    const/4 v5, 0x0

    goto :goto_b

    .line 284
    .end local v49           #token:Landroid/os/IBinder;
    .end local v161           #res:Z
    :sswitch_9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 286
    .restart local v101       #b:Landroid/os/IBinder;
    if-eqz v101, :cond_d

    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 288
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 289
    .local v18, packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 290
    if-eqz v101, :cond_e

    invoke-static/range {v101 .. v101}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v19

    .line 292
    .local v19, rec:Landroid/content/IIntentReceiver;
    :goto_d
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/IntentFilter;

    .line 293
    .local v20, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .local v21, perm:Ljava/lang/String;
    move-object/from16 v16, p0

    move-object/from16 v17, v6

    .line 294
    invoke-virtual/range {v16 .. v21}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 295
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    if-eqz v7, :cond_f

    .line 297
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 302
    :goto_e
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 286
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v18           #packageName:Ljava/lang/String;
    .end local v19           #rec:Landroid/content/IIntentReceiver;
    .end local v20           #filter:Landroid/content/IntentFilter;
    .end local v21           #perm:Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    goto :goto_c

    .line 290
    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v18       #packageName:Ljava/lang/String;
    :cond_e
    const/16 v19, 0x0

    goto :goto_d

    .line 300
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v19       #rec:Landroid/content/IIntentReceiver;
    .restart local v20       #filter:Landroid/content/IntentFilter;
    .restart local v21       #perm:Ljava/lang/String;
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 307
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v18           #packageName:Ljava/lang/String;
    .end local v19           #rec:Landroid/content/IIntentReceiver;
    .end local v20           #filter:Landroid/content/IntentFilter;
    .end local v21           #perm:Ljava/lang/String;
    .end local v101           #b:Landroid/os/IBinder;
    :sswitch_a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 309
    .restart local v101       #b:Landroid/os/IBinder;
    if-nez v101, :cond_10

    .line 310
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 312
    :cond_10
    invoke-static/range {v101 .. v101}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v19

    .line 313
    .restart local v19       #rec:Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 320
    .end local v19           #rec:Landroid/content/IIntentReceiver;
    .end local v101           #b:Landroid/os/IBinder;
    :sswitch_b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 322
    .restart local v101       #b:Landroid/os/IBinder;
    if-eqz v101, :cond_11

    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 324
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_f
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 325
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 326
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 327
    if-eqz v101, :cond_12

    invoke-static/range {v101 .. v101}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v9

    .line 329
    .local v9, resultTo:Landroid/content/IIntentReceiver;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 330
    .restart local v40       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 331
    .local v41, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v42

    .line 332
    .local v42, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 333
    .restart local v21       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    const/16 v44, 0x1

    .line 334
    .local v44, serialized:Z
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    const/16 v45, 0x1

    .line 335
    .local v45, sticky:Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .local v46, userId:I
    move-object/from16 v35, p0

    move-object/from16 v36, v6

    move-object/from16 v37, v7

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v43, v21

    .line 336
    invoke-virtual/range {v35 .. v46}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I

    move-result v161

    .line 339
    .local v161, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    move-object/from16 v0, p3

    move/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 322
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/content/IIntentReceiver;
    .end local v21           #perm:Ljava/lang/String;
    .end local v40           #resultCode:I
    .end local v41           #resultData:Ljava/lang/String;
    .end local v42           #resultExtras:Landroid/os/Bundle;
    .end local v44           #serialized:Z
    .end local v45           #sticky:Z
    .end local v46           #userId:I
    .end local v161           #res:I
    :cond_11
    const/4 v6, 0x0

    goto :goto_f

    .line 327
    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v8       #resolvedType:Ljava/lang/String;
    :cond_12
    const/4 v9, 0x0

    goto :goto_10

    .line 333
    .restart local v9       #resultTo:Landroid/content/IIntentReceiver;
    .restart local v21       #perm:Ljava/lang/String;
    .restart local v40       #resultCode:I
    .restart local v41       #resultData:Ljava/lang/String;
    .restart local v42       #resultExtras:Landroid/os/Bundle;
    :cond_13
    const/16 v44, 0x0

    goto :goto_11

    .line 334
    .restart local v44       #serialized:Z
    :cond_14
    const/16 v45, 0x0

    goto :goto_12

    .line 346
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/content/IIntentReceiver;
    .end local v21           #perm:Ljava/lang/String;
    .end local v40           #resultCode:I
    .end local v41           #resultData:Ljava/lang/String;
    .end local v42           #resultExtras:Landroid/os/Bundle;
    .end local v44           #serialized:Z
    .end local v101           #b:Landroid/os/IBinder;
    :sswitch_c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 348
    .restart local v101       #b:Landroid/os/IBinder;
    if-eqz v101, :cond_15

    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 349
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_13
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 350
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 351
    .restart local v46       #userId:I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v6, v7, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 348
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v46           #userId:I
    :cond_15
    const/4 v6, 0x0

    goto :goto_13

    .line 357
    .end local v101           #b:Landroid/os/IBinder;
    :sswitch_d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 359
    .local v39, who:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 360
    .restart local v40       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 361
    .restart local v41       #resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v42

    .line 362
    .restart local v42       #resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    const/16 v43, 0x1

    .line 363
    .local v43, resultAbort:Z
    :goto_14
    if-eqz v39, :cond_16

    move-object/from16 v38, p0

    .line 364
    invoke-virtual/range {v38 .. v43}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 366
    :cond_16
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 362
    .end local v43           #resultAbort:Z
    :cond_17
    const/16 v43, 0x0

    goto :goto_14

    .line 371
    .end local v39           #who:Landroid/os/IBinder;
    .end local v40           #resultCode:I
    .end local v41           #resultData:Ljava/lang/String;
    .end local v42           #resultExtras:Landroid/os/Bundle;
    :sswitch_e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 374
    .restart local v6       #app:Landroid/app/IApplicationThread;
    if-eqz v6, :cond_18

    .line 375
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 377
    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 382
    .end local v6           #app:Landroid/app/IApplicationThread;
    :sswitch_f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 384
    .restart local v49       #token:Landroid/os/IBinder;
    const/16 v24, 0x0

    .line 385
    .restart local v24       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    .line 386
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #config:Landroid/content/res/Configuration;
    check-cast v24, Landroid/content/res/Configuration;

    .line 388
    .restart local v24       #config:Landroid/content/res/Configuration;
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    const/16 v169, 0x1

    .line 389
    .local v169, stopProfiling:Z
    :goto_15
    if-eqz v49, :cond_1a

    .line 390
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v24

    move/from16 v3, v169

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 392
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 388
    .end local v169           #stopProfiling:Z
    :cond_1b
    const/16 v169, 0x0

    goto :goto_15

    .line 397
    .end local v24           #config:Landroid/content/res/Configuration;
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_10
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 399
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 405
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_11
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 407
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v133

    .line 408
    .local v133, map:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v177, v5

    .line 410
    .local v177, thumbnail:Landroid/graphics/Bitmap;
    :goto_16
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Ljava/lang/CharSequence;

    .line 411
    .local v112, description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v133

    move-object/from16 v3, v177

    move-object/from16 v4, v112

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 408
    .end local v112           #description:Ljava/lang/CharSequence;
    .end local v177           #thumbnail:Landroid/graphics/Bitmap;
    :cond_1c
    const/16 v177, 0x0

    goto :goto_16

    .line 417
    .end local v49           #token:Landroid/os/IBinder;
    .end local v133           #map:Landroid/os/Bundle;
    :sswitch_12
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 419
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 425
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_13
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 427
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 433
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_14
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 435
    .restart local v49       #token:Landroid/os/IBinder;
    if-eqz v49, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v161

    .line 436
    .local v161, res:Ljava/lang/String;
    :goto_17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    move-object/from16 v0, p3

    move-object/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 435
    .end local v161           #res:Ljava/lang/String;
    :cond_1d
    const/16 v161, 0x0

    goto :goto_17

    .line 442
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_15
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 444
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v109

    .line 445
    .local v109, cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    move-object/from16 v0, v109

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 447
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 451
    .end local v49           #token:Landroid/os/IBinder;
    .end local v109           #cn:Landroid/content/ComponentName;
    :sswitch_16
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v135

    .line 453
    .local v135, maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 454
    .local v59, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v157

    .line 455
    .local v157, receiverBinder:Landroid/os/IBinder;
    if-eqz v157, :cond_1e

    invoke-static/range {v157 .. v157}, Landroid/app/IThumbnailReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;

    move-result-object v156

    .line 458
    .local v156, receiver:Landroid/app/IThumbnailReceiver;
    :goto_18
    move-object/from16 v0, p0

    move/from16 v1, v135

    move/from16 v2, v59

    move-object/from16 v3, v156

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v127

    .line 459
    .local v127, list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v127, :cond_1f

    invoke-interface/range {v127 .. v127}, Ljava/util/List;->size()I

    move-result v94

    .line 461
    .local v94, N:I
    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    const/16 v118, 0x0

    .local v118, i:I
    :goto_1a
    move/from16 v0, v118

    move/from16 v1, v94

    if-ge v0, v1, :cond_20

    .line 464
    move-object/from16 v0, v127

    move/from16 v1, v118

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v121

    check-cast v121, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 466
    .local v121, info:Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v121

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 463
    add-int/lit8 v118, v118, 0x1

    goto :goto_1a

    .line 455
    .end local v94           #N:I
    .end local v118           #i:I
    .end local v121           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v127           #list:Ljava/util/List;
    .end local v156           #receiver:Landroid/app/IThumbnailReceiver;
    :cond_1e
    const/16 v156, 0x0

    goto :goto_18

    .line 460
    .restart local v127       #list:Ljava/util/List;
    .restart local v156       #receiver:Landroid/app/IThumbnailReceiver;
    :cond_1f
    const/16 v94, -0x1

    goto :goto_19

    .line 468
    .restart local v94       #N:I
    .restart local v118       #i:I
    :cond_20
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 472
    .end local v59           #fl:I
    .end local v94           #N:I
    .end local v118           #i:I
    .end local v127           #list:Ljava/util/List;
    .end local v135           #maxNum:I
    .end local v156           #receiver:Landroid/app/IThumbnailReceiver;
    .end local v157           #receiverBinder:Landroid/os/IBinder;
    :sswitch_17
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v135

    .line 474
    .restart local v135       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 475
    .restart local v59       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v135

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getRecentTasks(II)Ljava/util/List;

    move-result-object v129

    .line 477
    .local v129, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    move-object/from16 v0, p3

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 479
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 483
    .end local v59           #fl:I
    .end local v129           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v135           #maxNum:I
    :sswitch_18
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .line 485
    .local v50, id:I
    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v104

    .line 486
    .local v104, bm:Landroid/app/ActivityManager$TaskThumbnails;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    if-eqz v104, :cond_21

    .line 488
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    const/4 v5, 0x0

    move-object/from16 v0, v104

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$TaskThumbnails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 493
    :goto_1b
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 491
    :cond_21
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 497
    .end local v50           #id:I
    .end local v104           #bm:Landroid/app/ActivityManager$TaskThumbnails;
    :sswitch_19
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v135

    .line 499
    .restart local v135       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 500
    .restart local v59       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v135

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v127

    .line 501
    .restart local v127       #list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v127, :cond_22

    invoke-interface/range {v127 .. v127}, Ljava/util/List;->size()I

    move-result v94

    .line 503
    .restart local v94       #N:I
    :goto_1c
    move-object/from16 v0, p3

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    const/16 v118, 0x0

    .restart local v118       #i:I
    :goto_1d
    move/from16 v0, v118

    move/from16 v1, v94

    if-ge v0, v1, :cond_23

    .line 506
    move-object/from16 v0, v127

    move/from16 v1, v118

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v121

    check-cast v121, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 508
    .local v121, info:Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v121

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 505
    add-int/lit8 v118, v118, 0x1

    goto :goto_1d

    .line 502
    .end local v94           #N:I
    .end local v118           #i:I
    .end local v121           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_22
    const/16 v94, -0x1

    goto :goto_1c

    .line 510
    .restart local v94       #N:I
    .restart local v118       #i:I
    :cond_23
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 514
    .end local v59           #fl:I
    .end local v94           #N:I
    .end local v118           #i:I
    .end local v127           #list:Ljava/util/List;
    .end local v135           #maxNum:I
    :sswitch_1a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v128

    .line 516
    .local v128, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    move-object/from16 v0, p3

    move-object/from16 v1, v128

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 518
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 522
    .end local v128           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :sswitch_1b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v130

    .line 524
    .local v130, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    move-object/from16 v0, p3

    move-object/from16 v1, v130

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 526
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 530
    .end local v130           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :sswitch_1c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v131

    .line 532
    .local v131, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    move-object/from16 v0, p3

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 534
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 538
    .end local v131           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_1d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v174

    .line 540
    .local v174, task:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 541
    .restart local v59       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .line 543
    .restart local v15       #options:Landroid/os/Bundle;
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v174

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2, v15}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 541
    .end local v15           #options:Landroid/os/Bundle;
    :cond_24
    const/4 v15, 0x0

    goto :goto_1e

    .line 549
    .end local v59           #fl:I
    .end local v174           #task:I
    :sswitch_1e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v174

    .line 551
    .restart local v174       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 552
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 557
    .end local v174           #task:I
    :sswitch_1f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 559
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    const/16 v141, 0x1

    .line 560
    .local v141, nonRoot:Z
    :goto_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v141

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v161

    .line 561
    .local v161, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    if-eqz v161, :cond_26

    const/4 v5, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 559
    .end local v141           #nonRoot:Z
    .end local v161           #res:Z
    :cond_25
    const/16 v141, 0x0

    goto :goto_1f

    .line 562
    .restart local v141       #nonRoot:Z
    .restart local v161       #res:Z
    :cond_26
    const/4 v5, 0x0

    goto :goto_20

    .line 567
    .end local v49           #token:Landroid/os/IBinder;
    .end local v141           #nonRoot:Z
    .end local v161           #res:Z
    :sswitch_20
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v174

    .line 569
    .restart local v174       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 575
    .end local v174           #task:I
    :sswitch_21
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 577
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    const/16 v143, 0x1

    .line 578
    .local v143, onlyRoot:Z
    :goto_21
    if-eqz v49, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v143

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v161

    .line 580
    .local v161, res:I
    :goto_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    move-object/from16 v0, p3

    move/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 577
    .end local v143           #onlyRoot:Z
    .end local v161           #res:I
    :cond_27
    const/16 v143, 0x0

    goto :goto_21

    .line 578
    .restart local v143       #onlyRoot:Z
    :cond_28
    const/16 v161, -0x1

    goto :goto_22

    .line 586
    .end local v49           #token:Landroid/os/IBinder;
    .end local v143           #onlyRoot:Z
    :sswitch_22
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 588
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v177, v5

    .line 590
    .restart local v177       #thumbnail:Landroid/graphics/Bitmap;
    :goto_23
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Ljava/lang/CharSequence;

    .line 591
    .restart local v112       #description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v177

    move-object/from16 v3, v112

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 588
    .end local v112           #description:Ljava/lang/CharSequence;
    .end local v177           #thumbnail:Landroid/graphics/Bitmap;
    :cond_29
    const/16 v177, 0x0

    goto :goto_23

    .line 597
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_23
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 599
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 600
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 601
    .local v140, name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/16 v167, 0x1

    .line 602
    .local v167, stable:Z
    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    move/from16 v2, v167

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Z)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v111

    .line 603
    .local v111, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    if-eqz v111, :cond_2b

    .line 605
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    const/4 v5, 0x0

    move-object/from16 v0, v111

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 610
    :goto_25
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 601
    .end local v111           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v167           #stable:Z
    :cond_2a
    const/16 v167, 0x0

    goto :goto_24

    .line 608
    .restart local v111       #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v167       #stable:Z
    :cond_2b
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 614
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v101           #b:Landroid/os/IBinder;
    .end local v111           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v140           #name:Ljava/lang/String;
    .end local v167           #stable:Z
    :sswitch_24
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 616
    .restart local v140       #name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 617
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v111

    .line 618
    .restart local v111       #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    if-eqz v111, :cond_2c

    .line 620
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    const/4 v5, 0x0

    move-object/from16 v0, v111

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 625
    :goto_26
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 623
    :cond_2c
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 629
    .end local v49           #token:Landroid/os/IBinder;
    .end local v111           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v140           #name:Ljava/lang/String;
    :sswitch_25
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 631
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 632
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v152

    .line 634
    .local v152, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v152

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 640
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v101           #b:Landroid/os/IBinder;
    .end local v152           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :sswitch_26
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 642
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v167

    .line 643
    .local v167, stable:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v178

    .line 644
    .local v178, unstable:I
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, v167

    move/from16 v3, v178

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v161

    .line 645
    .local v161, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    if-eqz v161, :cond_2d

    const/4 v5, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 646
    :cond_2d
    const/4 v5, 0x0

    goto :goto_27

    .line 651
    .end local v101           #b:Landroid/os/IBinder;
    .end local v161           #res:Z
    .end local v167           #stable:I
    .end local v178           #unstable:I
    :sswitch_27
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 653
    .restart local v101       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 659
    .end local v101           #b:Landroid/os/IBinder;
    :sswitch_28
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 661
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    const/16 v167, 0x1

    .line 662
    .local v167, stable:Z
    :goto_28
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, v167

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 661
    .end local v167           #stable:Z
    :cond_2e
    const/16 v167, 0x0

    goto :goto_28

    .line 668
    .end local v101           #b:Landroid/os/IBinder;
    :sswitch_29
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 670
    .restart local v140       #name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 671
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 677
    .end local v49           #token:Landroid/os/IBinder;
    .end local v140           #name:Ljava/lang/String;
    :sswitch_2a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/content/ComponentName;

    .line 679
    .local v110, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v146

    .line 680
    .local v146, pi:Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    move-object/from16 v0, v146

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 682
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 686
    .end local v110           #comp:Landroid/content/ComponentName;
    .end local v146           #pi:Landroid/app/PendingIntent;
    :sswitch_2b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 688
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 689
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/content/Intent;

    .line 690
    .local v56, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 691
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v6, v1, v8}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v109

    .line 692
    .restart local v109       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    move-object/from16 v0, v109

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 694
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 698
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v56           #service:Landroid/content/Intent;
    .end local v101           #b:Landroid/os/IBinder;
    .end local v109           #cn:Landroid/content/ComponentName;
    :sswitch_2c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 700
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 701
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/content/Intent;

    .line 702
    .restart local v56       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 703
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v6, v1, v8}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v161

    .line 704
    .local v161, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    move-object/from16 v0, p3

    move/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 710
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v56           #service:Landroid/content/Intent;
    .end local v101           #b:Landroid/os/IBinder;
    .end local v161           #res:I
    :sswitch_2d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v48

    .line 712
    .local v48, className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 713
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v168

    .line 714
    .local v168, startId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    move/from16 v3, v168

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v161

    .line 715
    .local v161, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    if-eqz v161, :cond_2f

    const/4 v5, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 716
    :cond_2f
    const/4 v5, 0x0

    goto :goto_29

    .line 721
    .end local v48           #className:Landroid/content/ComponentName;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v161           #res:Z
    .end local v168           #startId:I
    :sswitch_2e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v48

    .line 723
    .restart local v48       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 724
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .line 725
    .restart local v50       #id:I
    const/16 v51, 0x0

    .line 726
    .local v51, notification:Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_30

    .line 727
    sget-object v5, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v51

    .end local v51           #notification:Landroid/app/Notification;
    check-cast v51, Landroid/app/Notification;

    .line 729
    .restart local v51       #notification:Landroid/app/Notification;
    :cond_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    const/16 v52, 0x1

    .local v52, removeNotification:Z
    :goto_2a
    move-object/from16 v47, p0

    .line 730
    invoke-virtual/range {v47 .. v52}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 729
    .end local v52           #removeNotification:Z
    :cond_31
    const/16 v52, 0x0

    goto :goto_2a

    .line 736
    .end local v48           #className:Landroid/content/ComponentName;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v50           #id:I
    .end local v51           #notification:Landroid/app/Notification;
    :sswitch_2f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 738
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 739
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 740
    .restart local v49       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/content/Intent;

    .line 741
    .restart local v56       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 742
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 744
    .restart local v59       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 745
    .restart local v46       #userId:I
    invoke-static/range {v101 .. v101}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v58

    .local v58, conn:Landroid/app/IServiceConnection;
    move-object/from16 v53, p0

    move-object/from16 v54, v6

    move-object/from16 v55, v49

    move-object/from16 v57, v8

    move/from16 v60, v46

    .line 746
    invoke-virtual/range {v53 .. v60}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result v161

    .line 747
    .local v161, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    move-object/from16 v0, p3

    move/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 753
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v46           #userId:I
    .end local v49           #token:Landroid/os/IBinder;
    .end local v56           #service:Landroid/content/Intent;
    .end local v58           #conn:Landroid/app/IServiceConnection;
    .end local v59           #fl:I
    .end local v101           #b:Landroid/os/IBinder;
    .end local v161           #res:I
    :sswitch_30
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 755
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v58

    .line 756
    .restart local v58       #conn:Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v161

    .line 757
    .local v161, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    if-eqz v161, :cond_32

    const/4 v5, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 758
    :cond_32
    const/4 v5, 0x0

    goto :goto_2b

    .line 763
    .end local v58           #conn:Landroid/app/IServiceConnection;
    .end local v101           #b:Landroid/os/IBinder;
    .end local v161           #res:Z
    :sswitch_31
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 765
    .restart local v49       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 766
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v56

    .line 767
    .local v56, service:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v7, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 773
    .end local v7           #intent:Landroid/content/Intent;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v56           #service:Landroid/os/IBinder;
    :sswitch_32
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 775
    .restart local v49       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 776
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_33

    const/16 v114, 0x1

    .line 777
    .local v114, doRebind:Z
    :goto_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v114

    invoke-virtual {v0, v1, v7, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 778
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 776
    .end local v114           #doRebind:Z
    :cond_33
    const/16 v114, 0x0

    goto :goto_2c

    .line 783
    .end local v7           #intent:Landroid/content/Intent;
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_33
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 785
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 786
    .local v67, type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v168

    .line 787
    .restart local v168       #startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v161

    .line 788
    .local v161, res:I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v67

    move/from16 v3, v168

    move/from16 v4, v161

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 789
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 794
    .end local v49           #token:Landroid/os/IBinder;
    .end local v67           #type:I
    .end local v161           #res:I
    .end local v168           #startId:I
    :sswitch_34
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v48

    .line 796
    .restart local v48       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 797
    .restart local v13       #profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 798
    .restart local v59       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v64

    .line 799
    .local v64, arguments:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 800
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v65

    .local v65, w:Landroid/app/IInstrumentationWatcher;
    move-object/from16 v60, p0

    move-object/from16 v61, v48

    move-object/from16 v62, v13

    move/from16 v63, v59

    .line 801
    invoke-virtual/range {v60 .. v65}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z

    move-result v161

    .line 802
    .local v161, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    if-eqz v161, :cond_34

    const/4 v5, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 803
    :cond_34
    const/4 v5, 0x0

    goto :goto_2d

    .line 809
    .end local v13           #profileFile:Ljava/lang/String;
    .end local v48           #className:Landroid/content/ComponentName;
    .end local v59           #fl:I
    .end local v64           #arguments:Landroid/os/Bundle;
    .end local v65           #w:Landroid/app/IInstrumentationWatcher;
    .end local v101           #b:Landroid/os/IBinder;
    .end local v161           #res:Z
    :sswitch_35
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 811
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 812
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 813
    .restart local v40       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v163

    .line 814
    .local v163, results:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v163

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 815
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 820
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v40           #resultCode:I
    .end local v101           #b:Landroid/os/IBinder;
    .end local v163           #results:Landroid/os/Bundle;
    :sswitch_36
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v24

    .line 822
    .restart local v24       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 824
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 828
    .end local v24           #config:Landroid/content/res/Configuration;
    :sswitch_37
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/Configuration;

    .line 830
    .restart local v24       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 836
    .end local v24           #config:Landroid/content/res/Configuration;
    :sswitch_38
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 838
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v160

    .line 839
    .local v160, requestedOrientation:I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v160

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 840
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 845
    .end local v49           #token:Landroid/os/IBinder;
    .end local v160           #requestedOrientation:I
    :sswitch_39
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 847
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v159

    .line 848
    .local v159, req:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    move-object/from16 v0, p3

    move/from16 v1, v159

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 854
    .end local v49           #token:Landroid/os/IBinder;
    .end local v159           #req:I
    :sswitch_3a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 856
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v109

    .line 857
    .restart local v109       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    move-object/from16 v0, v109

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 859
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 863
    .end local v49           #token:Landroid/os/IBinder;
    .end local v109           #cn:Landroid/content/ComponentName;
    :sswitch_3b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 865
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 867
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 871
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_3c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 873
    .restart local v67       #type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 874
    .restart local v18       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 875
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 876
    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 879
    .restart local v11       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35

    .line 880
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v72

    check-cast v72, [Landroid/content/Intent;

    .line 881
    .local v72, requestIntents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v73

    .line 886
    .local v73, requestResolvedTypes:[Ljava/lang/String;
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 887
    .restart local v59       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_2f
    move-object/from16 v66, p0

    move-object/from16 v68, v18

    move-object/from16 v69, v49

    move-object/from16 v70, v10

    move/from16 v71, v11

    move/from16 v74, v59

    move-object/from16 v75, v15

    .line 889
    invoke-virtual/range {v66 .. v75}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v161

    .line 892
    .local v161, res:Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    if-eqz v161, :cond_37

    invoke-interface/range {v161 .. v161}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 894
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 883
    .end local v15           #options:Landroid/os/Bundle;
    .end local v59           #fl:I
    .end local v72           #requestIntents:[Landroid/content/Intent;
    .end local v73           #requestResolvedTypes:[Ljava/lang/String;
    .end local v161           #res:Landroid/content/IIntentSender;
    :cond_35
    const/16 v72, 0x0

    .line 884
    .restart local v72       #requestIntents:[Landroid/content/Intent;
    const/16 v73, 0x0

    .restart local v73       #requestResolvedTypes:[Ljava/lang/String;
    goto :goto_2e

    .line 887
    .restart local v59       #fl:I
    :cond_36
    const/4 v15, 0x0

    goto :goto_2f

    .line 893
    .restart local v15       #options:Landroid/os/Bundle;
    .restart local v161       #res:Landroid/content/IIntentSender;
    :cond_37
    const/4 v5, 0x0

    goto :goto_30

    .line 898
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v15           #options:Landroid/os/Bundle;
    .end local v18           #packageName:Ljava/lang/String;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v59           #fl:I
    .end local v67           #type:I
    .end local v72           #requestIntents:[Landroid/content/Intent;
    .end local v73           #requestResolvedTypes:[Ljava/lang/String;
    .end local v161           #res:Landroid/content/IIntentSender;
    :sswitch_3d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v154

    .line 901
    .local v154, r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 902
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 907
    .end local v154           #r:Landroid/content/IIntentSender;
    :sswitch_3e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v154

    .line 910
    .restart local v154       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v161

    .line 911
    .local v161, res:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    move-object/from16 v0, p3

    move-object/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 913
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 917
    .end local v154           #r:Landroid/content/IIntentSender;
    .end local v161           #res:Ljava/lang/String;
    :sswitch_3f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v154

    .line 920
    .restart local v154       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v161

    .line 921
    .local v161, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    move-object/from16 v0, p3

    move/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 927
    .end local v154           #r:Landroid/content/IIntentSender;
    .end local v161           #res:I
    :sswitch_40
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v134

    .line 929
    .local v134, max:I
    move-object/from16 v0, p0

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 930
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 935
    .end local v134           #max:I
    :sswitch_41
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v126

    .line 937
    .local v126, limit:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    move-object/from16 v0, p3

    move/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 943
    .end local v126           #limit:I
    :sswitch_42
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 945
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v147

    .line 946
    .local v147, pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    const/16 v124, 0x1

    .line 947
    .local v124, isForeground:Z
    :goto_31
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v147

    move/from16 v3, v124

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 948
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 946
    .end local v124           #isForeground:Z
    :cond_38
    const/16 v124, 0x0

    goto :goto_31

    .line 953
    .end local v49           #token:Landroid/os/IBinder;
    .end local v147           #pid:I
    :sswitch_43
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 955
    .restart local v21       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v147

    .line 956
    .restart local v147       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 957
    .local v81, uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v147

    move/from16 v3, v81

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v161

    .line 958
    .restart local v161       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    move-object/from16 v0, p3

    move/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 960
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 964
    .end local v21           #perm:Ljava/lang/String;
    .end local v81           #uid:I
    .end local v147           #pid:I
    .end local v161           #res:I
    :sswitch_44
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .line 966
    .local v86, uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v147

    .line 967
    .restart local v147       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 968
    .restart local v81       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 969
    .local v87, mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move/from16 v2, v147

    move/from16 v3, v81

    move/from16 v4, v87

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v161

    .line 970
    .restart local v161       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    move-object/from16 v0, p3

    move/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 976
    .end local v81           #uid:I
    .end local v86           #uri:Landroid/net/Uri;
    .end local v87           #mode:I
    .end local v147           #pid:I
    .end local v161           #res:I
    :sswitch_45
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 978
    .restart local v18       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v142

    .line 980
    .local v142, observer:Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 981
    .restart local v46       #userId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v142

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v161

    .line 982
    .local v161, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    if-eqz v161, :cond_39

    const/4 v5, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 984
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 983
    :cond_39
    const/4 v5, 0x0

    goto :goto_32

    .line 988
    .end local v18           #packageName:Ljava/lang/String;
    .end local v46           #userId:I
    .end local v142           #observer:Landroid/content/pm/IPackageDataObserver;
    .end local v161           #res:Z
    :sswitch_46
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 990
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 991
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .line 992
    .local v85, targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .line 993
    .restart local v86       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 994
    .restart local v87       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v86

    move/from16 v3, v87

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 995
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1000
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v85           #targetPkg:Ljava/lang/String;
    .end local v86           #uri:Landroid/net/Uri;
    .end local v87           #mode:I
    .end local v101           #b:Landroid/os/IBinder;
    :sswitch_47
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1002
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1003
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .line 1004
    .restart local v86       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 1005
    .restart local v87       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move/from16 v2, v87

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V

    .line 1006
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1011
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v86           #uri:Landroid/net/Uri;
    .end local v87           #mode:I
    .end local v101           #b:Landroid/os/IBinder;
    :sswitch_48
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1013
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1014
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    const/16 v182, 0x1

    .line 1015
    .local v182, waiting:Z
    :goto_33
    move-object/from16 v0, p0

    move/from16 v1, v182

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1016
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1014
    .end local v182           #waiting:Z
    :cond_3a
    const/16 v182, 0x0

    goto :goto_33

    .line 1021
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v101           #b:Landroid/os/IBinder;
    :sswitch_49
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    new-instance v137, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v137 .. v137}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1023
    .local v137, mi:Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v137

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1024
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    const/4 v5, 0x0

    move-object/from16 v0, v137

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1026
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1030
    .end local v137           #mi:Landroid/app/ActivityManager$MemoryInfo;
    :sswitch_4a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1032
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1037
    :sswitch_4b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v86

    .line 1039
    .restart local v86       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v145

    .line 1040
    .local v145, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    if-eqz v145, :cond_3b

    .line 1042
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    const/4 v5, 0x1

    move-object/from16 v0, v145

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1047
    :goto_34
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1045
    :cond_3b
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    .line 1051
    .end local v86           #uri:Landroid/net/Uri;
    .end local v145           #pfd:Landroid/os/ParcelFileDescriptor;
    :sswitch_4c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->goingToSleep()V

    .line 1053
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1058
    :sswitch_4d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->wakingUp()V

    .line 1060
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1065
    :sswitch_4e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c

    const/4 v5, 0x1

    :goto_35
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    .line 1067
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1066
    :cond_3c
    const/4 v5, 0x0

    goto :goto_35

    .line 1072
    :sswitch_4f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v150

    .line 1074
    .local v150, pn:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3d

    const/16 v184, 0x1

    .line 1075
    .local v184, wfd:Z
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3e

    const/16 v144, 0x1

    .line 1076
    .local v144, per:Z
    :goto_37
    move-object/from16 v0, p0

    move-object/from16 v1, v150

    move/from16 v2, v184

    move/from16 v3, v144

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1077
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1074
    .end local v144           #per:Z
    .end local v184           #wfd:Z
    :cond_3d
    const/16 v184, 0x0

    goto :goto_36

    .line 1075
    .restart local v184       #wfd:Z
    :cond_3e
    const/16 v144, 0x0

    goto :goto_37

    .line 1082
    .end local v150           #pn:Ljava/lang/String;
    .end local v184           #wfd:Z
    :sswitch_50
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f

    const/16 v115, 0x1

    .line 1084
    .local v115, enabled:Z
    :goto_38
    move-object/from16 v0, p0

    move/from16 v1, v115

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1085
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1083
    .end local v115           #enabled:Z
    :cond_3f
    const/16 v115, 0x0

    goto :goto_38

    .line 1090
    :sswitch_51
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v183

    .line 1093
    .local v183, watcher:Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1094
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1098
    .end local v183           #watcher:Landroid/app/IActivityController;
    :sswitch_52
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1105
    :sswitch_53
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v123

    .line 1108
    .local v123, is:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v123

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;)V

    .line 1109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1114
    .end local v123           #is:Landroid/content/IIntentSender;
    :sswitch_54
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v148

    .line 1116
    .local v148, pids:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v155

    .line 1117
    .local v155, reason:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_40

    const/16 v164, 0x1

    .line 1118
    .local v164, secure:Z
    :goto_39
    move-object/from16 v0, p0

    move-object/from16 v1, v148

    move-object/from16 v2, v155

    move/from16 v3, v164

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v161

    .line 1119
    .restart local v161       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    if-eqz v161, :cond_41

    const/4 v5, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1121
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1117
    .end local v161           #res:Z
    .end local v164           #secure:Z
    :cond_40
    const/16 v164, 0x0

    goto :goto_39

    .line 1120
    .restart local v161       #res:Z
    .restart local v164       #secure:Z
    :cond_41
    const/4 v5, 0x0

    goto :goto_3a

    .line 1125
    .end local v148           #pids:[I
    .end local v155           #reason:Ljava/lang/String;
    .end local v161           #res:Z
    .end local v164           #secure:Z
    :sswitch_55
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v155

    .line 1127
    .restart local v155       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v155

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v161

    .line 1128
    .restart local v161       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    if-eqz v161, :cond_42

    const/4 v5, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1129
    :cond_42
    const/4 v5, 0x0

    goto :goto_3b

    .line 1134
    .end local v155           #reason:Ljava/lang/String;
    .end local v161           #res:Z
    :sswitch_56
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v149

    .line 1136
    .local v149, pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v108

    .line 1137
    .local v108, cls:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v95

    .line 1138
    .local v95, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v120

    .line 1139
    .local v120, indata:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v149

    move-object/from16 v2, v108

    move-object/from16 v3, v95

    move-object/from16 v4, v120

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1145
    .end local v95           #action:Ljava/lang/String;
    .end local v108           #cls:Ljava/lang/String;
    .end local v120           #indata:Ljava/lang/String;
    .end local v149           #pkg:Ljava/lang/String;
    :sswitch_57
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1147
    .local v6, app:Landroid/os/IBinder;
    new-instance v107, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v107

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1148
    .local v107, ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1150
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1154
    .end local v6           #app:Landroid/os/IBinder;
    .end local v107           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    :sswitch_58
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1156
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v172

    .line 1157
    .local v172, tag:Ljava/lang/String;
    new-instance v107, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v107

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1158
    .restart local v107       #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v172

    move-object/from16 v2, v107

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v161

    .line 1159
    .restart local v161       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1160
    if-eqz v161, :cond_43

    const/4 v5, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1161
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1160
    :cond_43
    const/4 v5, 0x0

    goto :goto_3c

    .line 1165
    .end local v6           #app:Landroid/os/IBinder;
    .end local v107           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v161           #res:Z
    .end local v172           #tag:Ljava/lang/String;
    :sswitch_59
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1167
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v181

    .line 1168
    .local v181, violationMask:I
    new-instance v121, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v121

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1169
    .local v121, info:Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v181

    move-object/from16 v2, v121

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1175
    .end local v6           #app:Landroid/os/IBinder;
    .end local v121           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v181           #violationMask:I
    :sswitch_5a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v165

    .line 1177
    .local v165, sig:I
    move-object/from16 v0, p0

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1183
    .end local v165           #sig:I
    :sswitch_5b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1185
    .restart local v18       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 1186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1191
    .end local v18           #packageName:Ljava/lang/String;
    :sswitch_5c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1192
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1194
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1198
    :sswitch_5d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1200
    .restart local v18       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;)V

    .line 1201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1206
    .end local v18           #packageName:Ljava/lang/String;
    :sswitch_5e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1207
    new-instance v121, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v121 .. v121}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1209
    .local v121, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    const/4 v5, 0x0

    move-object/from16 v0, v121

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1212
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1216
    .end local v121           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :sswitch_5f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v24

    .line 1218
    .local v24, config:Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1220
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1224
    .end local v24           #config:Landroid/content/pm/ConfigurationInfo;
    :sswitch_60
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v75

    .line 1226
    .local v75, process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_44

    const/16 v76, 0x1

    .line 1227
    .local v76, start:Z
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 1228
    .local v79, profileType:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v77

    .line 1229
    .local v77, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_45

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v78

    .local v78, fd:Landroid/os/ParcelFileDescriptor;
    :goto_3e
    move-object/from16 v74, p0

    .line 1231
    invoke-virtual/range {v74 .. v79}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Z

    move-result v161

    .line 1232
    .restart local v161       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    if-eqz v161, :cond_46

    const/4 v5, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1226
    .end local v76           #start:Z
    .end local v77           #path:Ljava/lang/String;
    .end local v78           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v79           #profileType:I
    .end local v161           #res:Z
    :cond_44
    const/16 v76, 0x0

    goto :goto_3d

    .line 1229
    .restart local v76       #start:Z
    .restart local v77       #path:Ljava/lang/String;
    .restart local v79       #profileType:I
    :cond_45
    const/16 v78, 0x0

    goto :goto_3e

    .line 1233
    .restart local v78       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v161       #res:Z
    :cond_46
    const/4 v5, 0x0

    goto :goto_3f

    .line 1238
    .end local v75           #process:Ljava/lang/String;
    .end local v76           #start:Z
    .end local v77           #path:Ljava/lang/String;
    .end local v78           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v79           #profileType:I
    .end local v161           #res:Z
    :sswitch_61
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v161

    .line 1240
    .restart local v161       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    if-eqz v161, :cond_47

    const/4 v5, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1241
    :cond_47
    const/4 v5, 0x0

    goto :goto_40

    .line 1246
    .end local v161           #res:Z
    :sswitch_62
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1247
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1253
    :sswitch_63
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1254
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1256
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1260
    :sswitch_64
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1261
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/content/Intent;

    .line 1262
    .local v56, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1263
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v103

    .line 1264
    .local v103, binder:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    move-object/from16 v0, p3

    move-object/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1266
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1270
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v56           #service:Landroid/content/Intent;
    .end local v103           #binder:Landroid/os/IBinder;
    :sswitch_65
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1271
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v121

    check-cast v121, Landroid/content/pm/ApplicationInfo;

    .line 1272
    .local v121, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v102

    .line 1273
    .local v102, backupRestoreMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move/from16 v2, v102

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v171

    .line 1274
    .local v171, success:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    if-eqz v171, :cond_48

    const/4 v5, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1275
    :cond_48
    const/4 v5, 0x0

    goto :goto_41

    .line 1280
    .end local v102           #backupRestoreMode:I
    .end local v121           #info:Landroid/content/pm/ApplicationInfo;
    .end local v171           #success:Z
    :sswitch_66
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1282
    .restart local v18       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1283
    .local v96, agent:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1289
    .end local v18           #packageName:Ljava/lang/String;
    .end local v96           #agent:Landroid/os/IBinder;
    :sswitch_67
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1290
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v121

    check-cast v121, Landroid/content/pm/ApplicationInfo;

    .line 1291
    .restart local v121       #info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1298
    .end local v121           #info:Landroid/content/pm/ApplicationInfo;
    :sswitch_68
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 1300
    .restart local v81       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 1301
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1302
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 1303
    .local v9, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1304
    .restart local v10       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1305
    .restart local v11       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1306
    .restart local v12       #startFlags:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_49

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_42
    move-object/from16 v80, p0

    move-object/from16 v82, v7

    move-object/from16 v83, v8

    move-object/from16 v84, v9

    move-object/from16 v85, v10

    move/from16 v86, v11

    move/from16 v87, v12

    move-object/from16 v88, v15

    .line 1308
    invoke-virtual/range {v80 .. v88}, Landroid/app/ActivityManagerNative;->startActivityInPackage(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v162

    .line 1310
    .local v162, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    move-object/from16 v0, p3

    move/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1312
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1306
    .end local v15           #options:Landroid/os/Bundle;
    .end local v162           #result:I
    :cond_49
    const/4 v15, 0x0

    goto :goto_42

    .line 1316
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v10           #resultWho:Ljava/lang/String;
    .end local v11           #requestCode:I
    .end local v12           #startFlags:I
    .end local v81           #uid:I
    :sswitch_69
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v149

    .line 1318
    .restart local v149       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 1319
    .restart local v81       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v149

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationWithUid(Ljava/lang/String;I)V

    .line 1320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1325
    .end local v81           #uid:I
    .end local v149           #pkg:Ljava/lang/String;
    :sswitch_6a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v155

    .line 1327
    .restart local v155       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v155

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1333
    .end local v155           #reason:Ljava/lang/String;
    :sswitch_6b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v148

    .line 1335
    .restart local v148       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v161

    .line 1336
    .local v161, res:[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1337
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v161

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1338
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1342
    .end local v148           #pids:[I
    .end local v161           #res:[Landroid/os/Debug$MemoryInfo;
    :sswitch_6c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v151

    .line 1344
    .local v151, processName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 1345
    .restart local v81       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v151

    move/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1351
    .end local v81           #uid:I
    .end local v151           #processName:Ljava/lang/String;
    :sswitch_6d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1353
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1354
    .restart local v18       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1355
    .local v116, enterAnim:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v117

    .line 1356
    .local v117, exitAnim:I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v18

    move/from16 v3, v116

    move/from16 v4, v117

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1362
    .end local v18           #packageName:Ljava/lang/String;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v116           #enterAnim:I
    .end local v117           #exitAnim:I
    :sswitch_6e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1363
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v99

    .line 1364
    .local v99, areThey:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1365
    if-eqz v99, :cond_4a

    const/4 v5, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1366
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1365
    :cond_4a
    const/4 v5, 0x0

    goto :goto_43

    .line 1370
    .end local v99           #areThey:Z
    :sswitch_6f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1377
    :sswitch_70
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1379
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v125

    .line 1380
    .local v125, isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    if-eqz v125, :cond_4b

    const/4 v5, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1382
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1381
    :cond_4b
    const/4 v5, 0x0

    goto :goto_44

    .line 1386
    .end local v49           #token:Landroid/os/IBinder;
    .end local v125           #isit:Z
    :sswitch_71
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1388
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v5, v0, :cond_4c

    const/16 v119, 0x1

    .line 1389
    .local v119, imm:Z
    :goto_45
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v119

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1391
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1388
    .end local v119           #imm:Z
    :cond_4c
    const/16 v119, 0x0

    goto :goto_45

    .line 1395
    .end local v49           #token:Landroid/os/IBinder;
    :sswitch_72
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1396
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v125

    .line 1397
    .restart local v125       #isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1398
    if-eqz v125, :cond_4d

    const/4 v5, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1399
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1398
    :cond_4d
    const/4 v5, 0x0

    goto :goto_46

    .line 1403
    .end local v125           #isit:Z
    :sswitch_73
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 1405
    .restart local v81       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v122

    .line 1406
    .local v122, initialPid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1407
    .restart local v18       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v136

    .line 1408
    .local v136, message:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v81

    move/from16 v2, v122

    move-object/from16 v3, v18

    move-object/from16 v4, v136

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1410
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1414
    .end local v18           #packageName:Ljava/lang/String;
    .end local v81           #uid:I
    .end local v122           #initialPid:I
    .end local v136           #message:Ljava/lang/String;
    :sswitch_74
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1415
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .line 1416
    .restart local v86       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v67

    .line 1417
    .local v67, type:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1418
    move-object/from16 v0, p3

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1419
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1423
    .end local v67           #type:Ljava/lang/String;
    .end local v86           #uri:Landroid/net/Uri;
    :sswitch_75
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v140

    .line 1425
    .restart local v140       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    .line 1426
    .local v21, perm:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1428
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1432
    .end local v21           #perm:Landroid/os/IBinder;
    .end local v140           #name:Ljava/lang/String;
    :sswitch_76
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 1434
    .local v83, owner:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v84

    .line 1435
    .local v84, fromUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .line 1436
    .restart local v85       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .line 1437
    .restart local v86       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .restart local v87       #mode:I
    move-object/from16 v82, p0

    .line 1438
    invoke-virtual/range {v82 .. v87}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V

    .line 1439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1444
    .end local v83           #owner:Landroid/os/IBinder;
    .end local v84           #fromUid:I
    .end local v85           #targetPkg:Ljava/lang/String;
    .end local v86           #uri:Landroid/net/Uri;
    .end local v87           #mode:I
    :sswitch_77
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 1446
    .restart local v83       #owner:Landroid/os/IBinder;
    const/16 v86, 0x0

    .line 1447
    .restart local v86       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4e

    .line 1448
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1450
    :cond_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 1451
    .restart local v87       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    move-object/from16 v2, v86

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 1452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1457
    .end local v83           #owner:Landroid/os/IBinder;
    .end local v86           #uri:Landroid/net/Uri;
    .end local v87           #mode:I
    :sswitch_78
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v106

    .line 1459
    .local v106, callingUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .line 1460
    .restart local v85       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/net/Uri;

    .line 1461
    .restart local v86       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v138

    .line 1462
    .local v138, modeFlags:I
    move-object/from16 v0, p0

    move/from16 v1, v106

    move-object/from16 v2, v85

    move-object/from16 v3, v86

    move/from16 v4, v138

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I

    move-result v161

    .line 1463
    .local v161, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1464
    move-object/from16 v0, p3

    move/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1465
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1469
    .end local v85           #targetPkg:Ljava/lang/String;
    .end local v86           #uri:Landroid/net/Uri;
    .end local v106           #callingUid:I
    .end local v138           #modeFlags:I
    .end local v161           #res:I
    :sswitch_79
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v75

    .line 1471
    .restart local v75       #process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4f

    const/16 v132, 0x1

    .line 1472
    .local v132, managed:Z
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v77

    .line 1473
    .restart local v77       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v78

    .line 1475
    .restart local v78       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_48
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move/from16 v2, v132

    move-object/from16 v3, v77

    move-object/from16 v4, v78

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v161

    .line 1476
    .local v161, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1477
    if-eqz v161, :cond_51

    const/4 v5, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1478
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1471
    .end local v77           #path:Ljava/lang/String;
    .end local v78           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v132           #managed:Z
    .end local v161           #res:Z
    :cond_4f
    const/16 v132, 0x0

    goto :goto_47

    .line 1473
    .restart local v77       #path:Ljava/lang/String;
    .restart local v132       #managed:Z
    :cond_50
    const/16 v78, 0x0

    goto :goto_48

    .line 1477
    .restart local v78       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v161       #res:Z
    :cond_51
    const/4 v5, 0x0

    goto :goto_49

    .line 1483
    .end local v75           #process:Ljava/lang/String;
    .end local v77           #path:Ljava/lang/String;
    .end local v78           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v132           #managed:Z
    .end local v161           #res:Z
    :sswitch_7a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 1485
    .restart local v81       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v90

    check-cast v90, [Landroid/content/Intent;

    .line 1486
    .local v90, intents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v91

    .line 1487
    .local v91, resolvedTypes:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 1488
    .restart local v9       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_52

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_4a
    move-object/from16 v88, p0

    move/from16 v89, v81

    move-object/from16 v92, v9

    move-object/from16 v93, v15

    .line 1490
    invoke-virtual/range {v88 .. v93}, Landroid/app/ActivityManagerNative;->startActivitiesInPackage(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result v162

    .line 1492
    .restart local v162       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    move-object/from16 v0, p3

    move/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1494
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1488
    .end local v15           #options:Landroid/os/Bundle;
    .end local v162           #result:I
    :cond_52
    const/4 v15, 0x0

    goto :goto_4a

    .line 1499
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v81           #uid:I
    .end local v90           #intents:[Landroid/content/Intent;
    .end local v91           #resolvedTypes:[Ljava/lang/String;
    :sswitch_7b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 1501
    .restart local v101       #b:Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1502
    .local v6, app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v90

    check-cast v90, [Landroid/content/Intent;

    .line 1503
    .restart local v90       #intents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v91

    .line 1504
    .restart local v91       #resolvedTypes:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 1505
    .restart local v9       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_53

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object v15, v5

    .restart local v15       #options:Landroid/os/Bundle;
    :goto_4b
    move-object/from16 v88, p0

    move-object/from16 v89, v6

    move-object/from16 v92, v9

    move-object/from16 v93, v15

    .line 1507
    invoke-virtual/range {v88 .. v93}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result v162

    .line 1509
    .restart local v162       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1510
    move-object/from16 v0, p3

    move/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1511
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1505
    .end local v15           #options:Landroid/os/Bundle;
    .end local v162           #result:I
    :cond_53
    const/4 v15, 0x0

    goto :goto_4b

    .line 1516
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v9           #resultTo:Landroid/os/IBinder;
    .end local v90           #intents:[Landroid/content/Intent;
    .end local v91           #resolvedTypes:[Ljava/lang/String;
    .end local v101           #b:Landroid/os/IBinder;
    :sswitch_7c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v87

    .line 1518
    .restart local v87       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1519
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1520
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1525
    .end local v87           #mode:I
    :sswitch_7d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 1527
    .restart local v87       #mode:I
    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1529
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1530
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1535
    .end local v87           #mode:I
    :sswitch_7e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v149

    .line 1537
    .restart local v149       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v87

    .line 1538
    .restart local v87       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    move-object/from16 v0, p3

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1540
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1545
    .end local v87           #mode:I
    .end local v149           #pkg:Ljava/lang/String;
    :sswitch_7f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v149

    .line 1547
    .restart local v149       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v87

    .line 1548
    .restart local v87       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v149

    move/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1549
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1550
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1554
    .end local v87           #mode:I
    .end local v149           #pkg:Ljava/lang/String;
    :sswitch_80
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v180

    .line 1556
    .local v180, userid:I
    move-object/from16 v0, p0

    move/from16 v1, v180

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v162

    .line 1557
    .local v162, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    if-eqz v162, :cond_54

    const/4 v5, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1559
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1558
    :cond_54
    const/4 v5, 0x0

    goto :goto_4c

    .line 1563
    .end local v162           #result:Z
    .end local v180           #userid:I
    :sswitch_81
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v179

    .line 1565
    .local v179, userInfo:Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1566
    const/4 v5, 0x0

    move-object/from16 v0, v179

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1567
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1572
    .end local v179           #userInfo:Landroid/content/pm/UserInfo;
    :sswitch_82
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v175

    .line 1574
    .local v175, taskId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v170

    .line 1575
    .local v170, subTaskIndex:I
    move-object/from16 v0, p0

    move/from16 v1, v175

    move/from16 v2, v170

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeSubTask(II)Z

    move-result v162

    .line 1576
    .restart local v162       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1577
    if-eqz v162, :cond_55

    const/4 v5, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1578
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1577
    :cond_55
    const/4 v5, 0x0

    goto :goto_4d

    .line 1583
    .end local v162           #result:Z
    .end local v170           #subTaskIndex:I
    .end local v175           #taskId:I
    :sswitch_83
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v175

    .line 1585
    .restart local v175       #taskId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 1586
    .restart local v59       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v175

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v162

    .line 1587
    .restart local v162       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1588
    if-eqz v162, :cond_56

    const/4 v5, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1589
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1588
    :cond_56
    const/4 v5, 0x0

    goto :goto_4e

    .line 1593
    .end local v59           #fl:I
    .end local v162           #result:Z
    .end local v175           #taskId:I
    :sswitch_84
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v142

    .line 1596
    .local v142, observer:Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1597
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1601
    .end local v142           #observer:Landroid/app/IProcessObserver;
    :sswitch_85
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v142

    .line 1604
    .restart local v142       #observer:Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1605
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1610
    .end local v142           #observer:Landroid/app/IProcessObserver;
    :sswitch_86
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v149

    .line 1612
    .restart local v149       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v100

    .line 1613
    .local v100, ask:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1614
    if-eqz v100, :cond_57

    const/4 v5, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1615
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1614
    :cond_57
    const/4 v5, 0x0

    goto :goto_4f

    .line 1620
    .end local v100           #ask:Z
    .end local v149           #pkg:Ljava/lang/String;
    :sswitch_87
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v149

    .line 1622
    .restart local v149       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_58

    const/16 v100, 0x1

    .line 1623
    .restart local v100       #ask:Z
    :goto_50
    move-object/from16 v0, p0

    move-object/from16 v1, v149

    move/from16 v2, v100

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1625
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1622
    .end local v100           #ask:Z
    :cond_58
    const/16 v100, 0x0

    goto :goto_50

    .line 1629
    .end local v149           #pkg:Ljava/lang/String;
    :sswitch_88
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v154

    .line 1632
    .restart local v154       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v161

    .line 1633
    .restart local v161       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1634
    if-eqz v161, :cond_59

    const/4 v5, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1635
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1634
    :cond_59
    const/4 v5, 0x0

    goto :goto_51

    .line 1639
    .end local v154           #r:Landroid/content/IIntentSender;
    .end local v161           #res:Z
    :sswitch_89
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v154

    .line 1642
    .restart local v154       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v161

    .line 1643
    .restart local v161       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1644
    if-eqz v161, :cond_5a

    const/4 v5, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1645
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1644
    :cond_5a
    const/4 v5, 0x0

    goto :goto_52

    .line 1649
    .end local v154           #r:Landroid/content/IIntentSender;
    .end local v161           #res:Z
    :sswitch_8a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1650
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/Configuration;

    .line 1651
    .local v24, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1653
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1657
    .end local v24           #config:Landroid/content/res/Configuration;
    :sswitch_8b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v148

    .line 1659
    .restart local v148       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v153

    .line 1660
    .local v153, pss:[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1661
    move-object/from16 v0, p3

    move-object/from16 v1, v153

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1662
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1666
    .end local v148           #pids:[I
    .end local v153           #pss:[J
    :sswitch_8c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1667
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v139

    check-cast v139, Ljava/lang/CharSequence;

    .line 1668
    .local v139, msg:Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5b

    const/16 v98, 0x1

    .line 1669
    .local v98, always:Z
    :goto_53
    move-object/from16 v0, p0

    move-object/from16 v1, v139

    move/from16 v2, v98

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 1670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1671
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1668
    .end local v98           #always:Z
    :cond_5b
    const/16 v98, 0x0

    goto :goto_53

    .line 1675
    .end local v139           #msg:Ljava/lang/CharSequence;
    :sswitch_8d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1676
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->dismissKeyguardOnNextActivity()V

    .line 1677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1678
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1682
    :sswitch_8e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1684
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v113

    .line 1685
    .local v113, destAffinity:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v113

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->targetTaskAffinityMatchesActivity(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v161

    .line 1686
    .restart local v161       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    if-eqz v161, :cond_5c

    const/4 v5, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1688
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1687
    :cond_5c
    const/4 v5, 0x0

    goto :goto_54

    .line 1692
    .end local v49           #token:Landroid/os/IBinder;
    .end local v113           #destAffinity:Ljava/lang/String;
    .end local v161           #res:Z
    :sswitch_8f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1694
    .restart local v49       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v173

    check-cast v173, Landroid/content/Intent;

    .line 1695
    .local v173, target:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1696
    .restart local v40       #resultCode:I
    const/16 v41, 0x0

    .line 1697
    .local v41, resultData:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5d

    .line 1698
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #resultData:Landroid/content/Intent;
    check-cast v41, Landroid/content/Intent;

    .line 1700
    .restart local v41       #resultData:Landroid/content/Intent;
    :cond_5d
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v173

    move/from16 v3, v40

    move-object/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v161

    .line 1701
    .restart local v161       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1702
    if-eqz v161, :cond_5e

    const/4 v5, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1703
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1702
    :cond_5e
    const/4 v5, 0x0

    goto :goto_55

    .line 1707
    .end local v40           #resultCode:I
    .end local v41           #resultData:Landroid/content/Intent;
    .end local v49           #token:Landroid/os/IBinder;
    .end local v161           #res:Z
    .end local v173           #target:Landroid/content/Intent;
    :sswitch_90
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1709
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v161

    .line 1710
    .local v161, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1711
    move-object/from16 v0, p3

    move/from16 v1, v161

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1712
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1717
    .end local v49           #token:Landroid/os/IBinder;
    .end local v161           #res:I
    :sswitch_91
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1719
    .restart local v49       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v166

    .line 1720
    .local v166, splitScreenZone:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5f

    const/16 v97, 0x1

    .line 1721
    .local v97, allInTask:Z
    :goto_56
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v166

    move/from16 v3, v97

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setWindowMode(Landroid/os/IBinder;IZ)V

    .line 1722
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1723
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1720
    .end local v97           #allInTask:Z
    :cond_5f
    const/16 v97, 0x0

    goto :goto_56

    .line 1727
    .end local v49           #token:Landroid/os/IBinder;
    .end local v166           #splitScreenZone:I
    :sswitch_92
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1729
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getWindowMode(Landroid/os/IBinder;)I

    move-result v159

    .line 1730
    .restart local v159       #req:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1731
    move-object/from16 v0, p3

    move/from16 v1, v159

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1732
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1735
    .end local v49           #token:Landroid/os/IBinder;
    .end local v159           #req:I
    :sswitch_93
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1737
    .restart local v49       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getWindowInfo(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v159

    .line 1738
    .local v159, req:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1739
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v159

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1740
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1743
    .end local v49           #token:Landroid/os/IBinder;
    .end local v159           #req:Landroid/os/Bundle;
    :sswitch_94
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 1745
    .restart local v49       #token:Landroid/os/IBinder;
    const-class v5, Landroid/os/Bundle;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v185

    check-cast v185, Landroid/os/Bundle;

    .line 1746
    .local v185, winInfo:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v185

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setWindowInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 1747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1751
    .end local v49           #token:Landroid/os/IBinder;
    .end local v185           #winInfo:Landroid/os/Bundle;
    :sswitch_95
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1752
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityPosition()Landroid/graphics/Rect;

    move-result-object v158

    .line 1753
    .local v158, rect:Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1754
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v158

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1755
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1758
    .end local v158           #rect:Landroid/graphics/Rect;
    :sswitch_96
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1759
    new-instance v176, Ljava/util/ArrayList;

    invoke-direct/range {v176 .. v176}, Ljava/util/ArrayList;-><init>()V

    .line 1760
    .local v176, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .line 1761
    .restart local v94       #N:I
    const/16 v118, 0x0

    .restart local v118       #i:I
    :goto_57
    move/from16 v0, v118

    move/from16 v1, v94

    if-ge v0, v1, :cond_60

    .line 1762
    const-class v5, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v154

    check-cast v154, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1763
    .local v154, r:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v176

    move-object/from16 v1, v154

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1761
    add-int/lit8 v118, v118, 0x1

    goto :goto_57

    .line 1765
    .end local v154           #r:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_60
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateTasksOrder(Ljava/util/List;)V

    .line 1766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 131
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_56
        0x2 -> :sswitch_57
        0x3 -> :sswitch_0
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_4b
        0xb -> :sswitch_5
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_d
        0x11 -> :sswitch_e
        0x12 -> :sswitch_f
        0x13 -> :sswitch_10
        0x14 -> :sswitch_11
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_1d
        0x19 -> :sswitch_1e
        0x1a -> :sswitch_20
        0x1b -> :sswitch_21
        0x1c -> :sswitch_22
        0x1d -> :sswitch_23
        0x1e -> :sswitch_25
        0x1f -> :sswitch_26
        0x20 -> :sswitch_6
        0x21 -> :sswitch_2a
        0x22 -> :sswitch_2b
        0x23 -> :sswitch_2c
        0x24 -> :sswitch_2f
        0x25 -> :sswitch_30
        0x26 -> :sswitch_31
        0x28 -> :sswitch_4c
        0x29 -> :sswitch_4d
        0x2a -> :sswitch_4f
        0x2b -> :sswitch_50
        0x2c -> :sswitch_34
        0x2d -> :sswitch_35
        0x2e -> :sswitch_36
        0x2f -> :sswitch_37
        0x30 -> :sswitch_2d
        0x31 -> :sswitch_3a
        0x32 -> :sswitch_3b
        0x33 -> :sswitch_40
        0x34 -> :sswitch_41
        0x35 -> :sswitch_43
        0x36 -> :sswitch_44
        0x37 -> :sswitch_46
        0x38 -> :sswitch_47
        0x39 -> :sswitch_51
        0x3a -> :sswitch_48
        0x3b -> :sswitch_5a
        0x3c -> :sswitch_17
        0x3d -> :sswitch_33
        0x3e -> :sswitch_13
        0x3f -> :sswitch_3c
        0x40 -> :sswitch_3d
        0x41 -> :sswitch_3e
        0x42 -> :sswitch_52
        0x43 -> :sswitch_4
        0x44 -> :sswitch_53
        0x45 -> :sswitch_28
        0x46 -> :sswitch_38
        0x47 -> :sswitch_39
        0x48 -> :sswitch_32
        0x49 -> :sswitch_42
        0x4a -> :sswitch_2e
        0x4b -> :sswitch_1f
        0x4c -> :sswitch_49
        0x4d -> :sswitch_1a
        0x4e -> :sswitch_45
        0x4f -> :sswitch_5d
        0x50 -> :sswitch_54
        0x51 -> :sswitch_19
        0x52 -> :sswitch_18
        0x53 -> :sswitch_1b
        0x54 -> :sswitch_5f
        0x55 -> :sswitch_64
        0x56 -> :sswitch_60
        0x57 -> :sswitch_61
        0x58 -> :sswitch_62
        0x59 -> :sswitch_63
        0x5a -> :sswitch_65
        0x5b -> :sswitch_66
        0x5c -> :sswitch_67
        0x5d -> :sswitch_3f
        0x5f -> :sswitch_68
        0x60 -> :sswitch_69
        0x61 -> :sswitch_6a
        0x62 -> :sswitch_6b
        0x63 -> :sswitch_6c
        0x64 -> :sswitch_3
        0x65 -> :sswitch_6d
        0x66 -> :sswitch_58
        0x67 -> :sswitch_5b
        0x68 -> :sswitch_6e
        0x69 -> :sswitch_1
        0x6a -> :sswitch_8
        0x6b -> :sswitch_2
        0x6c -> :sswitch_1c
        0x6d -> :sswitch_6f
        0x6e -> :sswitch_59
        0x6f -> :sswitch_70
        0x70 -> :sswitch_71
        0x71 -> :sswitch_72
        0x72 -> :sswitch_73
        0x73 -> :sswitch_74
        0x74 -> :sswitch_75
        0x75 -> :sswitch_76
        0x76 -> :sswitch_77
        0x77 -> :sswitch_78
        0x78 -> :sswitch_79
        0x79 -> :sswitch_7b
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_12
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_86
        0x81 -> :sswitch_87
        0x82 -> :sswitch_80
        0x83 -> :sswitch_82
        0x84 -> :sswitch_83
        0x85 -> :sswitch_84
        0x86 -> :sswitch_85
        0x87 -> :sswitch_88
        0x88 -> :sswitch_8a
        0x89 -> :sswitch_8b
        0x8a -> :sswitch_8c
        0x8b -> :sswitch_8d
        0x8c -> :sswitch_5c
        0x8d -> :sswitch_24
        0x8e -> :sswitch_29
        0x8f -> :sswitch_5e
        0x90 -> :sswitch_55
        0x91 -> :sswitch_81
        0x92 -> :sswitch_8e
        0x93 -> :sswitch_8f
        0x94 -> :sswitch_4e
        0x95 -> :sswitch_7
        0x96 -> :sswitch_90
        0x97 -> :sswitch_27
        0x98 -> :sswitch_89
        0x3e9 -> :sswitch_91
        0x3ea -> :sswitch_92
        0x3eb -> :sswitch_93
        0x3ec -> :sswitch_94
        0x3ed -> :sswitch_95
        0x3ee -> :sswitch_96
    .end sparse-switch
.end method
