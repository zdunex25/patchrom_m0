.class public abstract Lcom/android/camera/ActivityBase;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/ui/LayoutChangeNotifier$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ActivityBase$MyAppBridge;,
        Lcom/android/camera/ActivityBase$HideCameraAppView;,
        Lcom/android/camera/ActivityBase$ScreenOffReceiver;
    }
.end annotation


# static fields
.field public static mPowerShutter:Z

.field private static sFirstStartAfterScreenOn:Z

.field private static sScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field protected static sSecureAlbumId:I


# instance fields
.field protected mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field protected mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

.field protected mCameraAppView:Landroid/view/View;

.field private mCameraAppViewFadeIn:Landroid/view/animation/Animation;

.field private mCameraAppViewFadeOut:Landroid/view/animation/Animation;

.field protected mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field protected mCameraDisabled:Z

.field protected mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private final mHandler:Landroid/os/Handler;

.field protected mNumberOfCameras:I

.field protected mOpenCameraFail:Z

.field protected mPaused:Z

.field protected mPendingSwitchCameraId:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResultCodeForTesting:I

.field private mResultDataForTesting:Landroid/content/Intent;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field protected mSecureCamera:Z

.field protected mShowCameraAppView:Z

.field private mSingleTapArea:Landroid/view/View;

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mStoragePath:Ljava/lang/String;

.field private mStorageSpace:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/ActivityBase;->mPowerShutter:Z

    .line 108
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/ActivityBase;->sFirstStartAfterScreenOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ActivityBase;->mPendingSwitchCameraId:I

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    .line 111
    const-wide/32 v0, 0x2faf080

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mStorageSpace:J

    .line 113
    new-instance v0, Lcom/android/camera/ActivityBase$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$1;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/android/camera/ActivityBase$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$2;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    new-instance v0, Lcom/android/camera/ActivityBase$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$3;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 581
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    sput-boolean p0, Lcom/android/camera/ActivityBase;->sFirstStartAfterScreenOn:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/camera/ActivityBase;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onSingleTapUp(II)Z

    move-result v0

    return v0
.end method

.method public static isFirstStartAfterScreenOn()Z
    .locals 1

    .prologue
    .line 154
    sget-boolean v0, Lcom/android/camera/ActivityBase;->sFirstStartAfterScreenOn:Z

    return v0
.end method

.method private onSingleTapUp(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 534
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 545
    :goto_0
    return v1

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-static {v1, v4}, Lcom/android/camera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    .line 538
    .local v0, relativeLocation:[I
    aget v1, v0, v3

    sub-int/2addr p1, v1

    .line 539
    aget v1, v0, v2

    sub-int/2addr p2, v1

    .line 540
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-ltz p2, :cond_2

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 542
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/camera/ActivityBase;->onSingleTapUp(Landroid/view/View;II)V

    move v1, v2

    .line 543
    goto :goto_0

    :cond_2
    move v1, v3

    .line 545
    goto :goto_0
.end method

.method public static resetFirstStartAfterScreenOn()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/ActivityBase;->sFirstStartAfterScreenOn:Z

    .line 159
    return-void
.end method


# virtual methods
.method protected addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "isVideo"
    .parameter "uri"

    .prologue
    .line 566
    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    if-eqz v1, :cond_0

    .line 567
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 568
    .local v0, id:I
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v1, p1, v0}, Lcom/android/camera/ActivityBase$MyAppBridge;->addSecureAlbumItem(ZI)V

    .line 570
    .end local v0           #id:I
    :cond_0
    return-void
.end method

.method public createCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 4
    .parameter

    .prologue
    .line 390
    const v0, 0x7f10006f

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    .line 391
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 393
    if-eqz p1, :cond_2

    .line 394
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    if-eqz v0, :cond_1

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/secure/all/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/camera/ActivityBase;->sSecureAlbumId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    :goto_0
    const-string v2, "media-set-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v2, "media-item-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v0, "show_when_locked"

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 407
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 410
    :cond_0
    new-instance v0, Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$MyAppBridge;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    .line 411
    const-string v0, "app-bridge"

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 412
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 413
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 418
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$MyAppBridge;->getCameraScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 419
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0

    .line 397
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/local/all/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/Storage;->getStorage()Lcom/android/camera/Storage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Storage;->generateBucketIdInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 400
    :cond_2
    const-string v0, "/local/all/0"

    goto :goto_0

    .line 415
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/android/camera/ActivityBase;->mResultCodeForTesting:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    return-object v0
.end method

.method protected getStorageSpace()J
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/android/camera/ActivityBase;->mStorageSpace:J

    return-wide v0
.end method

.method protected initPowerShutter(Lcom/android/camera/ComboPreferences;)V
    .locals 5
    .parameter "prefs"

    .prologue
    const/high16 v4, -0x8000

    .line 231
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 232
    const-string v1, "pref_power_shutter"

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, val:Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/ActivityBase;->mPowerShutter:Z

    .line 235
    sget-boolean v1, Lcom/android/camera/ActivityBase;->mPowerShutter:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method protected installIntentFilter()V
    .locals 2

    .prologue
    .line 328
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    return-void
.end method

.method public isPanoramaActivity()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public isSecureCamera()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    return v0
.end method

.method public notifyScreenNailChanged()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/camera/ActivityBase$MyAppBridge;->notifyScreenNailChanged()V
    invoke-static {v0}, Lcom/android/camera/ActivityBase$MyAppBridge;->access$500(Lcom/android/camera/ActivityBase$MyAppBridge;)V

    .line 557
    return-void
.end method

.method protected onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 177
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->disableToggleStatusBar()V

    .line 184
    const v3, 0x7f0f003f

    invoke-virtual {p0, v3}, Lcom/android/camera/ActivityBase;->setTheme(I)V

    .line 185
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 186
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_ACTION_BAR:Z

    if-eqz v3, :cond_1

    .line 187
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/android/camera/ActivityBase;->requestWindowFeature(I)Z

    .line 193
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 194
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    iput-boolean v5, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    .line 198
    sget v3, Lcom/android/camera/ActivityBase;->sSecureAlbumId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/camera/ActivityBase;->sSecureAlbumId:I

    .line 204
    :goto_1
    iget-boolean v3, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    if-eqz v3, :cond_0

    .line 205
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/camera/ActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    sget-object v3, Lcom/android/camera/ActivityBase;->sScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    .line 208
    new-instance v3, Lcom/android/camera/ActivityBase$ScreenOffReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/camera/ActivityBase$ScreenOffReceiver;-><init>(Lcom/android/camera/ActivityBase$1;)V

    sput-object v3, Lcom/android/camera/ActivityBase;->sScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/camera/ActivityBase;->sScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    return-void

    .line 189
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/camera/ActivityBase;->requestWindowFeature(I)Z

    goto :goto_0

    .line 199
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_2
    const-string v3, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 200
    iput-boolean v5, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    goto :goto_1

    .line 202
    :cond_3
    const-string v3, "secure_camera"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 321
    invoke-static {p0}, Lcom/android/camera/ui/PopupManager;->removeInstance(Landroid/content/Context;)V

    .line 322
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 323
    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 324
    return-void
.end method

.method protected onFullScreenChanged(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-ne v0, p1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    .line 499
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateCameraAppView()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x52

    const/4 v0, 0x1

    .line 281
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_2

    .line 283
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    :cond_1
    :goto_0
    return v0

    .line 285
    :cond_2
    if-ne p1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v1, :cond_1

    .line 289
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 294
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 4
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 511
    iget-object v3, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    if-nez v3, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    sub-int v2, p4, p2

    .line 514
    .local v2, width:I
    sub-int v0, p5, p3

    .line 515
    .local v0, height:I
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v3, :cond_0

    .line 516
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/camera/CameraScreenNail;

    .line 517
    .local v1, screenNail:Lcom/android/camera/CameraScreenNail;
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_2

    .line 518
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    .line 524
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->notifyScreenNailChanged()V

    goto :goto_0

    .line 522
    :cond_2
    invoke-virtual {v1, v0, v2}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 257
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    return-void
.end method

.method protected onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 560
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 244
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 246
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->installIntentFilter()V

    .line 247
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateStorageHintOnResume()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateStorageSpace()V

    .line 249
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 251
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 549
    return-void
.end method

.method protected reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 3
    .parameter

    .prologue
    .line 424
    const v0, 0x7f10006f

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    .line 425
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 427
    if-eqz p1, :cond_2

    .line 428
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    if-eqz v0, :cond_1

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/secure/all/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/camera/ActivityBase;->sSecureAlbumId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    :goto_0
    const-string v2, "media-set-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v2, "media-item-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v0, "show_when_locked"

    iget-boolean v2, p0, Lcom/android/camera/ActivityBase;->mSecureCamera:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 441
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-direct {v0, p0}, Lcom/android/camera/ActivityBase$MyAppBridge;-><init>(Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    .line 444
    :cond_0
    const-string v0, "app-bridge"

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 446
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 450
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase$MyAppBridge;->getCameraScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 451
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0

    .line 431
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/local/all/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/Storage;->getStorage()Lcom/android/camera/Storage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Storage;->generateBucketIdInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 434
    :cond_2
    const-string v0, "/local/all/0"

    goto :goto_0

    .line 448
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/app/StateManager;->startStateNow(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setContentView(I)V

    .line 269
    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/GalleryActionBar;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 270
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 271
    return-void
.end method

.method protected setResultEx(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 301
    iput p1, p0, Lcom/android/camera/ActivityBase;->mResultCodeForTesting:I

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->setResult(I)V

    .line 303
    return-void
.end method

.method protected setResultEx(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 306
    iput p1, p0, Lcom/android/camera/ActivityBase;->mResultCodeForTesting:I

    .line 307
    iput-object p2, p0, Lcom/android/camera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 309
    return-void
.end method

.method protected setSingleTapUpListener(Landroid/view/View;)V
    .locals 0
    .parameter "singleTapArea"

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/camera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    .line 530
    return-void
.end method

.method protected setStoragePath(Landroid/content/SharedPreferences;)Z
    .locals 3
    .parameter "prefs"

    .prologue
    .line 220
    const-string v1, "pref_camera_storage_key"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, storagePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const/4 v1, 0x0

    .line 227
    :goto_0
    return v1

    .line 225
    :cond_0
    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mStoragePath:Ljava/lang/String;

    .line 226
    invoke-static {}, Lcom/android/camera/Storage;->getStorage()Lcom/android/camera/Storage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ActivityBase;->mStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/Storage;->setRoot(Ljava/lang/String;)V

    .line 227
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mAppBridge:Lcom/android/camera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/camera/ActivityBase$MyAppBridge;->setSwipingEnabled(Z)V
    invoke-static {v0, p1}, Lcom/android/camera/ActivityBase$MyAppBridge;->access$400(Lcom/android/camera/ActivityBase$MyAppBridge;Z)V

    .line 553
    return-void
.end method

.method protected updateCameraAppView()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 473
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    .line 475
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 476
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 478
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    .line 479
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 480
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 481
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/camera/ActivityBase$HideCameraAppView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ActivityBase$HideCameraAppView;-><init>(Lcom/android/camera/ActivityBase;Lcom/android/camera/ActivityBase$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 484
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 490
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected updateStorageHint()V
    .locals 2

    .prologue
    .line 351
    iget-wide v0, p0, Lcom/android/camera/ActivityBase;->mStorageSpace:J

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ActivityBase;->updateStorageHint(J)V

    .line 352
    return-void
.end method

.method protected updateStorageHint(J)V
    .locals 3
    .parameter "storageSpace"

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, message:Ljava/lang/String;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    .line 361
    const v1, 0x7f0a007f

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 371
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_5

    .line 372
    invoke-static {p0, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 376
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->show()V

    .line 381
    :cond_1
    :goto_2
    return-void

    .line 362
    :cond_2
    const-wide/16 v1, -0x2

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    .line 363
    const v1, 0x7f0a0080

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_3
    const-wide/16 v1, -0x3

    cmp-long v1, p1, v1

    if-nez v1, :cond_4

    .line 365
    const v1, 0x7f0a0081

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 366
    :cond_4
    const-wide/32 v1, 0x2faf080

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 367
    const v1, 0x7f0a00c2

    invoke-virtual {p0, v1}, Lcom/android/camera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_5
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 377
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 379
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ActivityBase;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_2
.end method

.method protected updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method protected updateStorageSpace()V
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Lcom/android/camera/Storage;->getStorage()Lcom/android/camera/Storage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ActivityBase;->mStorageSpace:J

    .line 339
    return-void
.end method

.method protected updateStorageSpaceAndHint()V
    .locals 2

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->updateStorageSpace()V

    .line 347
    iget-wide v0, p0, Lcom/android/camera/ActivityBase;->mStorageSpace:J

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ActivityBase;->updateStorageHint(J)V

    .line 348
    return-void
.end method
