.class public abstract Landroid/content/IContentService$Stub;
.super Landroid/os/Binder;
.source "IContentService.java"

# interfaces
.implements Landroid/content/IContentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IContentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IContentService"

.field static final TRANSACTION_addPeriodicSync:I = 0x9

.field static final TRANSACTION_addStatusChangeListener:I = 0x14

.field static final TRANSACTION_cancelSync:I = 0x5

.field static final TRANSACTION_getCurrentSyncs:I = 0x10

.field static final TRANSACTION_getIsSyncable:I = 0xb

.field static final TRANSACTION_getMasterSyncAutomatically:I = 0xe

.field static final TRANSACTION_getPeriodicSyncs:I = 0x8

.field static final TRANSACTION_getSyncAdapterTypes:I = 0x11

.field static final TRANSACTION_getSyncAutomatically:I = 0x6

.field static final TRANSACTION_getSyncStatus:I = 0x12

.field static final TRANSACTION_isSyncActive:I = 0xf

.field static final TRANSACTION_isSyncPending:I = 0x13

.field static final TRANSACTION_notifyChange:I = 0x3

.field static final TRANSACTION_registerContentObserver:I = 0x2

.field static final TRANSACTION_removePeriodicSync:I = 0xa

.field static final TRANSACTION_removeStatusChangeListener:I = 0x15

.field static final TRANSACTION_requestSync:I = 0x4

.field static final TRANSACTION_setIsSyncable:I = 0xc

.field static final TRANSACTION_setMasterSyncAutomatically:I = 0xd

.field static final TRANSACTION_setSyncAutomatically:I = 0x7

.field static final TRANSACTION_unregisterContentObserver:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.IContentService"

    invoke-virtual {p0, p0, v0}, Landroid/content/IContentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;
    .locals 2
    .parameter "obj"

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
    const-string v1, "android.content.IContentService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/IContentService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/content/IContentService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/content/IContentService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/IContentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 16
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 384
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v2

    .line 53
    .local v2, _arg0:Landroid/database/IContentObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/IContentService$Stub;->unregisterContentObserver(Landroid/database/IContentObserver;)V

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v1, 0x1

    goto :goto_0

    .line 59
    .end local v2           #_arg0:Landroid/database/IContentObserver;
    :sswitch_2
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 68
    .local v2, _arg0:Landroid/net/Uri;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 70
    .local v3, _arg1:Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v4

    .line 72
    .local v4, _arg2:Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 73
    .local v5, _arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/IContentService$Stub;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v1, 0x1

    goto :goto_0

    .line 65
    .end local v2           #_arg0:Landroid/net/Uri;
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Landroid/database/IContentObserver;
    .end local v5           #_arg3:I
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/net/Uri;
    goto :goto_1

    .line 68
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 79
    .end local v2           #_arg0:Landroid/net/Uri;
    :sswitch_3
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 88
    .restart local v2       #_arg0:Landroid/net/Uri;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v3

    .line 90
    .local v3, _arg1:Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    .line 92
    .local v4, _arg2:Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v5, 0x1

    .line 94
    .local v5, _arg3:Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg4:I
    move-object/from16 v1, p0

    .line 95
    invoke-virtual/range {v1 .. v6}, Landroid/content/IContentService$Stub;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZI)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 85
    .end local v2           #_arg0:Landroid/net/Uri;
    .end local v3           #_arg1:Landroid/database/IContentObserver;
    .end local v4           #_arg2:Z
    .end local v5           #_arg3:Z
    .end local v6           #_arg4:I
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/net/Uri;
    goto :goto_3

    .line 90
    .restart local v3       #_arg1:Landroid/database/IContentObserver;
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 92
    .restart local v4       #_arg2:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    .line 101
    .end local v2           #_arg0:Landroid/net/Uri;
    .end local v3           #_arg1:Landroid/database/IContentObserver;
    .end local v4           #_arg2:Z
    :sswitch_4
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 104
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 110
    .local v2, _arg0:Landroid/accounts/Account;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 113
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 118
    .local v4, _arg2:Landroid/os/Bundle;
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/IContentService$Stub;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 107
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Landroid/os/Bundle;
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_6

    .line 116
    .restart local v3       #_arg1:Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    .restart local v4       #_arg2:Landroid/os/Bundle;
    goto :goto_7

    .line 124
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Landroid/os/Bundle;
    :sswitch_5
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 127
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 133
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 130
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_8

    .line 140
    .end local v2           #_arg0:Landroid/accounts/Account;
    :sswitch_6
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 143
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 149
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 150
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    .line 151
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v13, :cond_9

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 146
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Z
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_9

    .line 152
    .restart local v3       #_arg1:Ljava/lang/String;
    .restart local v13       #_result:Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 157
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Z
    :sswitch_7
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 160
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 166
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v4, 0x1

    .line 169
    .local v4, _arg2:Z
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/IContentService$Stub;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 163
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Z
    :cond_a
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_b

    .line 168
    .restart local v3       #_arg1:Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 175
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_8
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 178
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 184
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 185
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 186
    .local v14, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 188
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 181
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v14           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/PeriodicSync;>;"
    :cond_c
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_d

    .line 192
    .end local v2           #_arg0:Landroid/accounts/Account;
    :sswitch_9
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 195
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 201
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 203
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 204
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 210
    .local v4, _arg2:Landroid/os/Bundle;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .local v11, _arg3:J
    move-object/from16 v7, p0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    .line 211
    invoke-virtual/range {v7 .. v12}, Landroid/content/IContentService$Stub;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 198
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Landroid/os/Bundle;
    .end local v11           #_arg3:J
    :cond_d
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_e

    .line 207
    .restart local v3       #_arg1:Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    .restart local v4       #_arg2:Landroid/os/Bundle;
    goto :goto_f

    .line 217
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Landroid/os/Bundle;
    :sswitch_a
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 220
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 226
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 228
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 229
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 234
    .restart local v4       #_arg2:Landroid/os/Bundle;
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/IContentService$Stub;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 223
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Landroid/os/Bundle;
    :cond_f
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_10

    .line 232
    .restart local v3       #_arg1:Ljava/lang/String;
    :cond_10
    const/4 v4, 0x0

    .restart local v4       #_arg2:Landroid/os/Bundle;
    goto :goto_11

    .line 240
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Landroid/os/Bundle;
    :sswitch_b
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 243
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 249
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 250
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v13

    .line 251
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 246
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:I
    :cond_11
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_12

    .line 257
    .end local v2           #_arg0:Landroid/accounts/Account;
    :sswitch_c
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 260
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 266
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 268
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 269
    .local v4, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/IContentService$Stub;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 263
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    :cond_12
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_13

    .line 275
    .end local v2           #_arg0:Landroid/accounts/Account;
    :sswitch_d
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, 0x1

    .line 278
    .local v2, _arg0:Z
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/IContentService$Stub;->setMasterSyncAutomatically(Z)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 277
    .end local v2           #_arg0:Z
    :cond_13
    const/4 v2, 0x0

    goto :goto_14

    .line 284
    :sswitch_e
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getMasterSyncAutomatically()Z

    move-result v13

    .line 286
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v13, :cond_14

    const/4 v1, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 287
    :cond_14
    const/4 v1, 0x0

    goto :goto_15

    .line 292
    .end local v13           #_result:Z
    :sswitch_f
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    .line 295
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 301
    .local v2, _arg0:Landroid/accounts/Account;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    .line 303
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v13, :cond_16

    const/4 v1, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 298
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Z
    :cond_15
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_16

    .line 304
    .restart local v3       #_arg1:Ljava/lang/String;
    .restart local v13       #_result:Z
    :cond_16
    const/4 v1, 0x0

    goto :goto_17

    .line 309
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Z
    :sswitch_10
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getCurrentSyncs()Ljava/util/List;

    move-result-object v15

    .line 311
    .local v15, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 313
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 317
    .end local v15           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    :sswitch_11
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v13

    .line 319
    .local v13, _result:[Landroid/content/SyncAdapterType;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 321
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 325
    .end local v13           #_result:[Landroid/content/SyncAdapterType;
    :sswitch_12
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    .line 328
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 334
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 335
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v13

    .line 336
    .local v13, _result:Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-eqz v13, :cond_18

    .line 338
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 344
    :goto_19
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 331
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Landroid/content/SyncStatusInfo;
    :cond_17
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_18

    .line 342
    .restart local v3       #_arg1:Ljava/lang/String;
    .restart local v13       #_result:Landroid/content/SyncStatusInfo;
    :cond_18
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 348
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Landroid/content/SyncStatusInfo;
    :sswitch_13
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    .line 351
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 357
    .restart local v2       #_arg0:Landroid/accounts/Account;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 358
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    .line 359
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v13, :cond_1a

    const/4 v1, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 354
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Z
    :cond_19
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/accounts/Account;
    goto :goto_1a

    .line 360
    .restart local v3       #_arg1:Ljava/lang/String;
    .restart local v13       #_result:Z
    :cond_1a
    const/4 v1, 0x0

    goto :goto_1b

    .line 365
    .end local v2           #_arg0:Landroid/accounts/Account;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:Z
    :sswitch_14
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 369
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v3

    .line 370
    .local v3, _arg1:Landroid/content/ISyncStatusObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/IContentService$Stub;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 376
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ISyncStatusObserver;
    :sswitch_15
    const-string v1, "android.content.IContentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v2

    .line 379
    .local v2, _arg0:Landroid/content/ISyncStatusObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/IContentService$Stub;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
