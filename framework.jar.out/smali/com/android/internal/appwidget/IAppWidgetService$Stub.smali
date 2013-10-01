.class public abstract Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.super Landroid/os/Binder;
.source "IAppWidgetService.java"

# interfaces
.implements Lcom/android/internal/appwidget/IAppWidgetService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/appwidget/IAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.appwidget.IAppWidgetService"

.field static final TRANSACTION_allocateAppWidgetId:I = 0x5

.field static final TRANSACTION_bindAppWidgetId:I = 0x15

.field static final TRANSACTION_bindAppWidgetIdIfAllowed:I = 0x16

.field static final TRANSACTION_bindRemoteViewsService:I = 0x17

.field static final TRANSACTION_deleteAllHosts:I = 0x8

.field static final TRANSACTION_deleteAppWidgetId:I = 0x6

.field static final TRANSACTION_deleteHost:I = 0x7

.field static final TRANSACTION_getAppWidgetIds:I = 0x19

.field static final TRANSACTION_getAppWidgetIdsForHost:I = 0xa

.field static final TRANSACTION_getAppWidgetInfo:I = 0x12

.field static final TRANSACTION_getAppWidgetOptions:I = 0xd

.field static final TRANSACTION_getAppWidgetViews:I = 0x9

.field static final TRANSACTION_getInstalledProviders:I = 0x11

.field static final TRANSACTION_hasBindAppWidgetPermission:I = 0x13

.field static final TRANSACTION_notifyAppWidgetViewDataChanged:I = 0x10

.field static final TRANSACTION_partiallyUpdateAppWidgetIds:I = 0xe

.field static final TRANSACTION_setBindAppWidgetPermission:I = 0x14

.field static final TRANSACTION_startListening:I = 0x1

.field static final TRANSACTION_startListeningAsUser:I = 0x2

.field static final TRANSACTION_stopListening:I = 0x3

.field static final TRANSACTION_stopListeningAsUser:I = 0x4

.field static final TRANSACTION_unbindRemoteViewsService:I = 0x18

.field static final TRANSACTION_updateAppWidgetIds:I = 0xb

.field static final TRANSACTION_updateAppWidgetOptions:I = 0xc

.field static final TRANSACTION_updateAppWidgetProvider:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/appwidget/IAppWidgetService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/appwidget/IAppWidgetService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 411
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 43
    :sswitch_0
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetHost;

    move-result-object v1

    .line 52
    .local v1, _arg0:Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    .local v3, _arg2:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v4, _arg3:Ljava/util/List;,"Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I

    move-result-object v7

    .line 58
    .local v7, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 60
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 65
    .end local v1           #_arg0:Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/widget/RemoteViews;>;"
    .end local v7           #_result:[I
    :sswitch_2
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetHost;

    move-result-object v1

    .line 69
    .restart local v1       #_arg0:Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 71
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 73
    .restart local v3       #_arg2:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .restart local v4       #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    move-object v0, p0

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->startListeningAsUser(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;I)[I

    move-result-object v7

    .line 77
    .restart local v7       #_result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 79
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 84
    .end local v1           #_arg0:Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/widget/RemoteViews;>;"
    .end local v5           #_arg4:I
    .end local v7           #_result:[I
    :sswitch_3
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->stopListening(I)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    .end local v1           #_arg0:I
    :sswitch_4
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->stopListeningAsUser(II)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_5
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->allocateAppWidgetId(Ljava/lang/String;I)I

    move-result v7

    .line 110
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v7           #_result:I
    :sswitch_6
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 119
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAppWidgetId(I)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 125
    .end local v1           #_arg0:I
    :sswitch_7
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteHost(I)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 134
    .end local v1           #_arg0:I
    :sswitch_8
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAllHosts()V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 141
    :sswitch_9
    const-string v10, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetViews(I)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 145
    .local v7, _result:Landroid/widget/RemoteViews;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v7, :cond_0

    .line 147
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {v7, p3, v9}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 151
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 157
    .end local v1           #_arg0:I
    .end local v7           #_result:Landroid/widget/RemoteViews;
    :sswitch_a
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 160
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIdsForHost(I)[I

    move-result-object v7

    .line 161
    .local v7, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 167
    .end local v1           #_arg0:I
    .end local v7           #_result:[I
    :sswitch_b
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 171
    .local v1, _arg0:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 177
    .local v2, _arg1:Landroid/widget/RemoteViews;
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetIds([ILandroid/widget/RemoteViews;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 175
    .end local v2           #_arg1:Landroid/widget/RemoteViews;
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/widget/RemoteViews;
    goto :goto_1

    .line 183
    .end local v1           #_arg0:[I
    .end local v2           #_arg1:Landroid/widget/RemoteViews;
    :sswitch_c
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 187
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 193
    .local v2, _arg1:Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 191
    .end local v2           #_arg1:Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Bundle;
    goto :goto_2

    .line 199
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/Bundle;
    :sswitch_d
    const-string v10, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v7

    .line 203
    .local v7, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v7, :cond_3

    .line 205
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    invoke-virtual {v7, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 209
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 215
    .end local v1           #_arg0:I
    .end local v7           #_result:Landroid/os/Bundle;
    :sswitch_e
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 219
    .local v1, _arg0:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 225
    .local v2, _arg1:Landroid/widget/RemoteViews;
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 223
    .end local v2           #_arg1:Landroid/widget/RemoteViews;
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/widget/RemoteViews;
    goto :goto_3

    .line 231
    .end local v1           #_arg0:[I
    .end local v2           #_arg1:Landroid/widget/RemoteViews;
    :sswitch_f
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 240
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 241
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 246
    .restart local v2       #_arg1:Landroid/widget/RemoteViews;
    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 237
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/widget/RemoteViews;
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_4

    .line 244
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/widget/RemoteViews;
    goto :goto_5

    .line 252
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Landroid/widget/RemoteViews;
    :sswitch_10
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 256
    .local v1, _arg0:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 257
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->notifyAppWidgetViewDataChanged([II)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 263
    .end local v1           #_arg0:[I
    .end local v2           #_arg1:I
    :sswitch_11
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 266
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v8

    .line 267
    .local v8, _result:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 273
    .end local v1           #_arg0:I
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :sswitch_12
    const-string v10, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 276
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    .line 277
    .local v7, _result:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    if-eqz v7, :cond_7

    .line 279
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    invoke-virtual {v7, p3, v9}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 283
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 289
    .end local v1           #_arg0:I
    .end local v7           #_result:Landroid/appwidget/AppWidgetProviderInfo;
    :sswitch_13
    const-string v10, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v7

    .line 293
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v7, :cond_8

    move v0, v9

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 299
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_14
    const-string v10, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 303
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9

    move v2, v9

    .line 304
    .local v2, _arg1:Z
    :goto_6
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    :cond_9
    move v2, v0

    .line 303
    goto :goto_6

    .line 310
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_15
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 314
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 315
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 321
    .local v2, _arg1:Landroid/content/ComponentName;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 322
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 327
    .local v3, _arg2:Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 318
    .end local v2           #_arg1:Landroid/content/ComponentName;
    .end local v3           #_arg2:Landroid/os/Bundle;
    :cond_a
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/content/ComponentName;
    goto :goto_7

    .line 325
    :cond_b
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Bundle;
    goto :goto_8

    .line 333
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/content/ComponentName;
    .end local v3           #_arg2:Landroid/os/Bundle;
    :sswitch_16
    const-string v10, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 339
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_d

    .line 340
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 346
    .local v3, _arg2:Landroid/content/ComponentName;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_e

    .line 347
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 352
    .local v6, _arg3:Landroid/os/Bundle;
    :goto_a
    invoke-virtual {p0, v1, v2, v3, v6}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindAppWidgetIdIfAllowed(Ljava/lang/String;ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v7

    .line 353
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v7, :cond_c

    move v0, v9

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 343
    .end local v3           #_arg2:Landroid/content/ComponentName;
    .end local v6           #_arg3:Landroid/os/Bundle;
    .end local v7           #_result:Z
    :cond_d
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/content/ComponentName;
    goto :goto_9

    .line 350
    :cond_e
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/os/Bundle;
    goto :goto_a

    .line 359
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/content/ComponentName;
    .end local v6           #_arg3:Landroid/os/Bundle;
    :sswitch_17
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 363
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 364
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 370
    .local v2, _arg1:Landroid/content/Intent;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 372
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 373
    .local v6, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v6}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;I)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 367
    .end local v2           #_arg1:Landroid/content/Intent;
    .end local v3           #_arg2:Landroid/os/IBinder;
    .end local v6           #_arg3:I
    :cond_f
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/content/Intent;
    goto :goto_b

    .line 379
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/content/Intent;
    :sswitch_18
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 383
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 384
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 390
    .restart local v2       #_arg1:Landroid/content/Intent;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 391
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->unbindRemoteViewsService(ILandroid/content/Intent;I)V

    .line 392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 387
    .end local v2           #_arg1:Landroid/content/Intent;
    .end local v3           #_arg2:I
    :cond_10
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/content/Intent;
    goto :goto_c

    .line 397
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/content/Intent;
    :sswitch_19
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 400
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 405
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_d
    invoke-virtual {p0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v7

    .line 406
    .local v7, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 403
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_result:[I
    :cond_11
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_d

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
