.class public final Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static final DBG:Z

.field private static sDimAlpha:I


# instance fields
.field private final mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->DBG:Z

    .line 60
    const/high16 v0, -0x8000

    sput v0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "cachedDevice"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 71
    sget v1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 72
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 73
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 74
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 77
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_0
    iput-object p2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .line 79
    invoke-virtual {p2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/OriginalSettings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-nez v1, :cond_2

    .line 81
    :cond_1
    const v1, 0x7f04009c

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method private askDisconnect()V
    .locals 8

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 263
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 265
    const v5, 0x7f0900a6

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 267
    :cond_0
    const v5, 0x7f09009a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, message:Ljava/lang/String;
    const v5, 0x7f090099

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, title:Ljava/lang/String;
    new-instance v1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V

    .line 276
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-static {v0, v5, v1, v4, v6}, Lcom/android/OriginalSettings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 278
    return-void
.end method

.method private getBtClassDrawable()I
    .locals 7

    .prologue
    .line 378
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 379
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 396
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 397
    const v4, 0x7f0200d5

    .line 415
    :goto_0
    return v4

    .line 382
    :sswitch_0
    const v4, 0x7f0200dc

    goto :goto_0

    .line 385
    :sswitch_1
    const v4, 0x7f0200ce

    goto :goto_0

    .line 388
    :sswitch_2
    invoke-static {v0}, Lcom/android/OriginalSettings/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    goto :goto_0

    .line 391
    :sswitch_3
    const v4, 0x7f0200e8

    goto :goto_0

    .line 399
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 400
    const v4, 0x7f0200d6

    goto :goto_0

    .line 403
    :cond_1
    const-string v5, "BluetoothDevicePreference"

    const-string v6, "mBtClass is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v3

    .line 407
    .local v3, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 408
    .local v2, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    .line 409
    .local v4, resId:I
    if-eqz v4, :cond_3

    goto :goto_0

    .line 415
    .end local v2           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .end local v4           #resId:I
    :cond_4
    const v4, 0x7f0200cf

    goto :goto_0

    .line 380
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method private getConnectionSummary()I
    .locals 13

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .line 290
    .local v1, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    const/4 v9, 0x0

    .line 291
    .local v9, profileConnected:Z
    const/4 v0, 0x0

    .line 292
    .local v0, a2dpNotConnected:Z
    const/4 v3, 0x0

    .line 295
    .local v3, headsetNotConnected:Z
    const/4 v5, 0x0

    .line 296
    .local v5, isA2dpConnected:Z
    const/4 v6, 0x0

    .line 297
    .local v6, isHeadsetConnected:Z
    const/4 v7, 0x0

    .line 299
    .local v7, isHidConnected:Z
    sget-boolean v10, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v10, :cond_0

    const-string v10, "BluetoothDevicePreference"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getConnectionSummary() device name::"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v12}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 301
    .local v8, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1, v8}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 302
    .local v2, connectionStatus:I
    const-string v10, "BluetoothDevicePreference"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "profile ::"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  connectionStatus::"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 306
    :pswitch_0
    invoke-static {v2}, Lcom/android/OriginalSettings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v10

    .line 372
    .end local v2           #connectionStatus:I
    .end local v8           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :goto_1
    return v10

    .line 309
    .restart local v2       #connectionStatus:I
    .restart local v8       #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :pswitch_1
    const-string v10, "BluetoothDevicePreference"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " profile Connected"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v9, 0x1

    .line 311
    instance-of v10, v8, Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    if-eqz v10, :cond_2

    .line 312
    const/4 v5, 0x1

    .line 314
    :cond_2
    instance-of v10, v8, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    if-eqz v10, :cond_3

    .line 315
    const/4 v6, 0x1

    .line 317
    :cond_3
    instance-of v10, v8, Lcom/android/OriginalSettings/bluetooth/HidProfile;

    if-eqz v10, :cond_1

    .line 318
    const/4 v7, 0x1

    goto :goto_0

    .line 351
    .end local v2           #connectionStatus:I
    .end local v8           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :cond_4
    if-eqz v9, :cond_9

    .line 352
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 353
    const v10, 0x7f090b03

    goto :goto_1

    .line 354
    :cond_5
    if-eqz v5, :cond_6

    .line 355
    const v10, 0x7f0901e8

    goto :goto_1

    .line 356
    :cond_6
    if-eqz v6, :cond_7

    .line 357
    const v10, 0x7f0901e9

    goto :goto_1

    .line 358
    :cond_7
    if-eqz v7, :cond_8

    .line 359
    const v10, 0x7f0901ee

    goto :goto_1

    .line 361
    :cond_8
    const v10, 0x7f09009d

    goto :goto_1

    .line 365
    :cond_9
    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    .line 372
    const/4 v10, 0x0

    goto :goto_1

    .line 367
    :pswitch_2
    const v10, 0x7f0900a5

    goto :goto_1

    .line 369
    :pswitch_3
    const v10, 0x7f090b04

    goto :goto_1

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 365
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private pair()V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901be

    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 285
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 226
    instance-of v0, p1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 228
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 231
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 212
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 213
    :cond_0
    const/4 v0, 0x0

    .line 215
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getCachedDevice()Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    const-string v3, "bt_checkbox"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 156
    const-string v3, "bt_checkbox"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_3

    .line 160
    const v3, 0x7f0b01a2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 164
    .local v0, deviceDetails:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/OriginalSettings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    if-eqz v3, :cond_5

    .line 166
    :cond_1
    const v3, 0x7f0b01a1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 167
    .local v1, divider:Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    .end local v1           #divider:Landroid/widget/ImageView;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    :goto_1
    invoke-static {v3}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 186
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 187
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 188
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 193
    .end local v0           #deviceDetails:Landroid/widget/ImageView;
    :cond_3
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 196
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-ne v3, v6, :cond_4

    .line 197
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 198
    .local v2, title:Landroid/widget/TextView;
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 199
    const v3, -0xff6601

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    .end local v2           #title:Landroid/widget/TextView;
    :cond_4
    return-void

    .line 174
    .restart local v0       #deviceDetails:Landroid/widget/ImageView;
    :cond_5
    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0xff

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0

    :cond_6
    sget v3, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    goto :goto_2

    .line 182
    :cond_7
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 208
    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 238
    .local v0, bondState:I
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    .line 242
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->pair()V

    goto :goto_0
.end method

.method onClickedForHeadset()V
    .locals 3

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 252
    .local v0, bondState:I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->pair()V

    goto :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 114
    sget-boolean v2, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothDevicePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDeviceAttributesChanged for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getConnectionSummary()I

    move-result v1

    .line 118
    .local v1, summaryResId:I
    const-string v2, "BluetoothDevicePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is my device connected::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz v1, :cond_4

    .line 120
    const-string v2, "BluetoothDevicePreference"

    const-string v5, "summaryResId != 0"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 127
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v0

    .line 128
    .local v0, iconResId:I
    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    :goto_2
    invoke-static {v2}, Lcom/android/OriginalSettings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v4, 0xc

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v4, 0xb

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 150
    return-void

    .line 123
    .end local v0           #iconResId:I
    :cond_4
    const-string v2, "BluetoothDevicePreference"

    const-string v5, "summaryResId else part"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .restart local v0       #iconResId:I
    :cond_5
    move v2, v3

    .line 133
    goto :goto_1

    :cond_6
    move-object v2, v4

    .line 137
    goto :goto_2
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 101
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 102
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 106
    :cond_0
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 96
    return-void
.end method
