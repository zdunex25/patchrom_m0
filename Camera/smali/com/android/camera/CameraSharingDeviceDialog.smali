.class public Lcom/android/camera/CameraSharingDeviceDialog;
.super Landroid/app/DialogFragment;
.source "CameraSharingDeviceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraSharingDeviceDialog$DeviceList;,
        Lcom/android/camera/CameraSharingDeviceDialog$DeviceListAdapter;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "CameraSharingDeviceDialog"


# instance fields
.field private final DIALOG_HEIGHT:I

.field private DeviceCheckStatus:[Z

.field private final MAX_USER:I

.field private mDeviceAdapter:Lcom/android/camera/CameraSharingDeviceDialog$DeviceListAdapter;

.field private mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/CameraSharingDeviceDialog$DeviceList;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/AlertDialog;

.field private final mSampleSize:I

.field private final mTitle:I

.field private mUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 51
    const v0, 0x7f080013

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->DIALOG_HEIGHT:I

    .line 52
    iput v2, p0, Lcom/android/camera/CameraSharingDeviceDialog;->MAX_USER:I

    .line 53
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->DeviceCheckStatus:[Z

    .line 54
    const v0, 0x7f09011f

    iput v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mTitle:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mSampleSize:I

    .line 57
    iput-object v1, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDeviceAdapter:Lcom/android/camera/CameraSharingDeviceDialog$DeviceListAdapter;

    .line 58
    iput-object v1, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDialog:Landroid/app/AlertDialog;

    .line 59
    iput-object v1, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mUserList:Ljava/util/ArrayList;

    .line 60
    iput-object v1, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDeviceList:Ljava/util/ArrayList;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CameraSharingDeviceDialog;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->DeviceCheckStatus:[Z

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/CameraSharingDeviceDialog;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mUserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private compareListComponent(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, one:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    .local p2, two:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    const/4 v2, 0x0

    .line 293
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v2

    .line 296
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    .line 297
    .local v1, u2:Lcom/samsung/shareshot/User;
    invoke-direct {p0, v1, p1}, Lcom/android/camera/CameraSharingDeviceDialog;->contain(Lcom/samsung/shareshot/User;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 302
    .end local v1           #u2:Lcom/samsung/shareshot/User;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private contain(Lcom/samsung/shareshot/User;Ljava/util/List;)Z
    .locals 4
    .parameter "user"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/shareshot/User;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 306
    .local p2, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    if-eqz p2, :cond_1

    .line 307
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    .line 308
    .local v1, u:Lcom/samsung/shareshot/User;
    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    const/4 v2, 0x1

    .line 316
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #u:Lcom/samsung/shareshot/User;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private refreshLayout()V
    .locals 4

    .prologue
    .line 275
    iget-object v2, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 277
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 278
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 279
    const/4 v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 280
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 281
    iget v2, p0, Lcom/android/camera/CameraSharingDeviceDialog;->DIALOG_HEIGHT:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 282
    const v2, 0x3f333333

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 284
    iget-object v2, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 285
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    .line 286
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 287
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #window:Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private setDeviceList()Z
    .locals 9

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Camera;

    iget-object v4, v4, Lcom/android/camera/Camera;->mUserWrapper:Lcom/android/camera/Camera$UserWrapper;

    invoke-virtual {v4}, Lcom/android/camera/Camera$UserWrapper;->getUserFromList()Ljava/util/List;

    move-result-object v2

    .line 244
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    const/4 v1, 0x0

    .line 246
    .local v1, isChangedList:Z
    iget-object v4, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mUserList:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 247
    const/4 v1, 0x1

    .line 254
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 255
    iget-object v4, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mUserList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 256
    iget-object v4, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 259
    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 262
    invoke-virtual {p0}, Lcom/android/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/camera/Camera;

    iget-object v4, v4, Lcom/android/camera/Camera;->mUserWrapper:Lcom/android/camera/Camera$UserWrapper;

    invoke-virtual {v4, v0}, Lcom/android/camera/Camera$UserWrapper;->getUserFromList(I)Lcom/samsung/shareshot/User;

    move-result-object v3

    .line 263
    .local v3, user:Lcom/samsung/shareshot/User;
    const-string v4, "CameraSharingDeviceDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeviceCheck = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v4, p0, Lcom/android/camera/CameraSharingDeviceDialog;->DeviceCheckStatus:[Z

    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v5

    aput-boolean v5, v4, v0

    .line 266
    iget-object v4, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v4, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDeviceList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/camera/CameraSharingDeviceDialog$DeviceList;

    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/camera/CameraSharingDeviceDialog;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v8

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/android/camera/CameraSharingDeviceDialog$DeviceList;-><init>(Lcom/android/camera/CameraSharingDeviceDialog;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    .end local v0           #i:I
    .end local v3           #user:Lcom/samsung/shareshot/User;
    :cond_2
    iget-object v4, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mUserList:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v2}, Lcom/android/camera/CameraSharingDeviceDialog;->compareListComponent(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 250
    :cond_3
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 271
    :cond_4
    return v1
.end method


# virtual methods
.method public loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "mFilePath"

    .prologue
    .line 134
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 135
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 136
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 137
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 139
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mUserList:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDeviceList:Ljava/util/ArrayList;

    .line 148
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/camera/CameraSharingDeviceDialog;->setDeviceList()Z

    .line 179
    new-instance v1, Lcom/android/camera/CameraSharingDeviceDialog$DeviceListAdapter;

    invoke-virtual {p0}, Lcom/android/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f030011

    iget-object v4, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDeviceList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/camera/CameraSharingDeviceDialog$DeviceListAdapter;-><init>(Lcom/android/camera/CameraSharingDeviceDialog;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDeviceAdapter:Lcom/android/camera/CameraSharingDeviceDialog$DeviceListAdapter;

    .line 181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, alertDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09011f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {p0}, Lcom/android/camera/CameraSharingDeviceDialog;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 184
    iget-object v1, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDeviceAdapter:Lcom/android/camera/CameraSharingDeviceDialog$DeviceListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    const v1, 0x7f09011d

    new-instance v2, Lcom/android/camera/CameraSharingDeviceDialog$1;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraSharingDeviceDialog$1;-><init>(Lcom/android/camera/CameraSharingDeviceDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    const v1, 0x7f09011c

    new-instance v2, Lcom/android/camera/CameraSharingDeviceDialog$2;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraSharingDeviceDialog$2;-><init>(Lcom/android/camera/CameraSharingDeviceDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDialog:Landroid/app/AlertDialog;

    .line 227
    invoke-direct {p0}, Lcom/android/camera/CameraSharingDeviceDialog;->refreshLayout()V

    .line 229
    iget-object v1, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDeviceAdapter:Lcom/android/camera/CameraSharingDeviceDialog$DeviceListAdapter;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDeviceAdapter:Lcom/android/camera/CameraSharingDeviceDialog$DeviceListAdapter;

    invoke-virtual {v0}, Lcom/android/camera/CameraSharingDeviceDialog$DeviceListAdapter;->clear()V

    .line 154
    iput-object v1, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDeviceAdapter:Lcom/android/camera/CameraSharingDeviceDialog$DeviceListAdapter;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 159
    iput-object v1, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDialog:Landroid/app/AlertDialog;

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mUserList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    iput-object v1, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mUserList:Ljava/util/ArrayList;

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDeviceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    iput-object v1, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDeviceList:Ljava/util/ArrayList;

    .line 172
    :cond_3
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 173
    return-void
.end method

.method public refreshDeviceList()V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/camera/CameraSharingDeviceDialog;->setDeviceList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDeviceAdapter:Lcom/android/camera/CameraSharingDeviceDialog$DeviceListAdapter;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/camera/CameraSharingDeviceDialog;->mDeviceAdapter:Lcom/android/camera/CameraSharingDeviceDialog$DeviceListAdapter;

    invoke-virtual {v0}, Lcom/android/camera/CameraSharingDeviceDialog$DeviceListAdapter;->notifyDataSetChanged()V

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraSharingDeviceDialog;->refreshLayout()V

    .line 240
    :cond_1
    return-void
.end method
