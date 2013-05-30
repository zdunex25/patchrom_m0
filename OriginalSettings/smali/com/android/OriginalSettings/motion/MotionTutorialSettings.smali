.class public Lcom/android/OriginalSettings/motion/MotionTutorialSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "MotionTutorialSettings.java"


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mCurrentDB:Ljava/lang/String;

.field private mDoubleTap:Landroid/preference/Preference;

.field private mDoubleTapToGoTopAnimationImage:[I

.field private mGlanceView:Landroid/preference/Preference;

.field private mGlanceViewTutorialAnimationImage:[I

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mIsQuickAnimation:Z

.field private mIsTablet:Z

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mPalmSwipe:Landroid/preference/Preference;

.field private mPalmTouch:Landroid/preference/Preference;

.field private mPan:Landroid/preference/Preference;

.field private mPanToBrowseImage:Landroid/preference/Preference;

.field private mPanToBrowseImageAnimationImage:[I

.field private mPanToMoveIconAnimationImage:[I

.field private mPickUp:Landroid/preference/Preference;

.field private mPickUpToBeNotifiedAnimationImage:[I

.field private mPickUpToCallOut:Landroid/preference/Preference;

.field private mPickUpToCallOutAnimationImage:[I

.field private mShake:Landroid/preference/Preference;

.field private mShakeToUpdateAnimationImage:[I

.field private mSurfacePalmSwipeAnimationImage:[I

.field private mSurfacePalmTouchAnimationImage:[I

.field private mSurfaceTapAndTwistAnimationImage:[I

.field private mTabletPanToBrowseImageAnimationImage:[I

.field private mTabletPanToMoveIconAnimationImage:[I

.field private mTapAndTwist:Landroid/preference/Preference;

.field private mTilt:Landroid/preference/Preference;

.field private mTiltToScrollList:Landroid/preference/Preference;

.field private mTiltToScrollListAnimationImage:[I

.field private mTiltToZoomAnimationImage:[I

.field private mTurnOver:Landroid/preference/Preference;

.field private mTurnOverToMuteAnimationImage:[I

.field private mTutorialContent:Ljava/lang/String;

.field private mTutorialTitle:Ljava/lang/String;

.field private mUnlockCameraShortCut:[I

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 88
    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 89
    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 90
    iput v2, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 91
    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 92
    iput-boolean v2, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsTablet:Z

    .line 93
    iput-boolean v2, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 96
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mGlanceViewTutorialAnimationImage:[I

    .line 97
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTiltToZoomAnimationImage:[I

    .line 98
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTiltToScrollListAnimationImage:[I

    .line 99
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPanToMoveIconAnimationImage:[I

    .line 100
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPanToBrowseImageAnimationImage:[I

    .line 101
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mShakeToUpdateAnimationImage:[I

    .line 102
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mDoubleTapToGoTopAnimationImage:[I

    .line 103
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPickUpToBeNotifiedAnimationImage:[I

    .line 104
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTurnOverToMuteAnimationImage:[I

    .line 105
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPickUpToCallOutAnimationImage:[I

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mUnlockCameraShortCut:[I

    .line 107
    new-array v0, v3, [I

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTabletPanToMoveIconAnimationImage:[I

    .line 108
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTabletPanToBrowseImageAnimationImage:[I

    .line 111
    new-array v0, v4, [I

    fill-array-data v0, :array_d

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mSurfacePalmSwipeAnimationImage:[I

    .line 112
    new-array v0, v1, [I

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mSurfacePalmTouchAnimationImage:[I

    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f020364

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mSurfaceTapAndTwistAnimationImage:[I

    .line 118
    new-instance v0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$1;-><init>(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    return-void

    .line 96
    :array_0
    .array-data 0x4
        0xadt 0x2t 0x2t 0x7ft
        0xaet 0x2t 0x2t 0x7ft
        0xaft 0x2t 0x2t 0x7ft
        0xb0t 0x2t 0x2t 0x7ft
        0xb1t 0x2t 0x2t 0x7ft
        0xb2t 0x2t 0x2t 0x7ft
    .end array-data

    .line 97
    :array_1
    .array-data 0x4
        0xf0t 0x1t 0x2t 0x7ft
        0xf1t 0x1t 0x2t 0x7ft
        0xf2t 0x1t 0x2t 0x7ft
    .end array-data

    .line 98
    :array_2
    .array-data 0x4
        0x7t 0x2t 0x2t 0x7ft
        0x8t 0x2t 0x2t 0x7ft
        0x9t 0x2t 0x2t 0x7ft
        0xat 0x2t 0x2t 0x7ft
        0xbt 0x2t 0x2t 0x7ft
    .end array-data

    .line 99
    :array_3
    .array-data 0x4
        0xect 0x1t 0x2t 0x7ft
        0xedt 0x1t 0x2t 0x7ft
        0xeet 0x1t 0x2t 0x7ft
        0xeft 0x1t 0x2t 0x7ft
    .end array-data

    .line 100
    :array_4
    .array-data 0x4
        0xdft 0x1t 0x2t 0x7ft
        0xe0t 0x1t 0x2t 0x7ft
        0xe1t 0x1t 0x2t 0x7ft
        0xe2t 0x1t 0x2t 0x7ft
        0xe3t 0x1t 0x2t 0x7ft
        0xe4t 0x1t 0x2t 0x7ft
        0xe5t 0x1t 0x2t 0x7ft
    .end array-data

    .line 101
    :array_5
    .array-data 0x4
        0xf9t 0x1t 0x2t 0x7ft
        0xfat 0x1t 0x2t 0x7ft
        0xf9t 0x1t 0x2t 0x7ft
        0xfat 0x1t 0x2t 0x7ft
    .end array-data

    .line 102
    :array_6
    .array-data 0x4
        0xe6t 0x1t 0x2t 0x7ft
        0xe7t 0x1t 0x2t 0x7ft
        0xe6t 0x1t 0x2t 0x7ft
        0xe7t 0x1t 0x2t 0x7ft
    .end array-data

    .line 103
    :array_7
    .array-data 0x4
        0xf4t 0x1t 0x2t 0x7ft
        0xf5t 0x1t 0x2t 0x7ft
        0xf6t 0x1t 0x2t 0x7ft
    .end array-data

    .line 104
    :array_8
    .array-data 0x4
        0xft 0x2t 0x2t 0x7ft
        0x10t 0x2t 0x2t 0x7ft
        0x11t 0x2t 0x2t 0x7ft
    .end array-data

    .line 105
    :array_9
    .array-data 0x4
        0xe9t 0x1t 0x2t 0x7ft
        0xeat 0x1t 0x2t 0x7ft
        0xebt 0x1t 0x2t 0x7ft
    .end array-data

    .line 106
    :array_a
    .array-data 0x4
        0xf7t 0x1t 0x2t 0x7ft
        0xf8t 0x1t 0x2t 0x7ft
    .end array-data

    .line 107
    :array_b
    .array-data 0x4
        0x3t 0x2t 0x2t 0x7ft
        0x4t 0x2t 0x2t 0x7ft
        0x5t 0x2t 0x2t 0x7ft
        0x6t 0x2t 0x2t 0x7ft
    .end array-data

    .line 108
    :array_c
    .array-data 0x4
        0xfbt 0x1t 0x2t 0x7ft
        0xfct 0x1t 0x2t 0x7ft
        0xfdt 0x1t 0x2t 0x7ft
        0xfet 0x1t 0x2t 0x7ft
        0xfft 0x1t 0x2t 0x7ft
        0x0t 0x2t 0x2t 0x7ft
        0x1t 0x2t 0x2t 0x7ft
        0x2t 0x2t 0x2t 0x7ft
    .end array-data

    .line 111
    :array_d
    .array-data 0x4
        0x2bt 0x2t 0x2t 0x7ft
        0x2ct 0x2t 0x2t 0x7ft
        0x2dt 0x2t 0x2t 0x7ft
        0x2et 0x2t 0x2t 0x7ft
        0x2ft 0x2t 0x2t 0x7ft
    .end array-data

    .line 112
    :array_e
    .array-data 0x4
        0x30t 0x2t 0x2t 0x7ft
        0x31t 0x2t 0x2t 0x7ft
        0x32t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startTryActually(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startTryActually()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->stopAnimation()V

    return-void
.end method

.method private showMotionDialog()V
    .locals 4

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->allDialogDismiss()V

    .line 343
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a57

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a56

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a55

    new-instance v3, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$2;-><init>(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090125

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 363
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$3;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$3;-><init>(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 369
    return-void
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->allDialogDismiss()V

    .line 408
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a53

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a52

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905b8

    new-instance v2, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$7;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$7;-><init>(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a54

    new-instance v2, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$6;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$6;-><init>(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 423
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    const-string v0, "MotionTutorialSettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 560
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 561
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->updateAnimation()V

    goto :goto_0
.end method

.method private startTryActually()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/16 v3, 0xa

    .line 427
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_zooming"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v1, "MotionTest"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v0, v3}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_tilt_to_list_scrolling"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 434
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 435
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 438
    :cond_2
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_panning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 442
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 443
    const-string v1, "com.sec.android.motions.settings.panningtutorial"

    const-string v2, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    invoke-virtual {p0, v0, v3}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 445
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_pan_to_browse_image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string v1, "MotionTest"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    invoke-virtual {p0, v0, v3}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 451
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_zooming"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 459
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 460
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.motion.ShakeTutorial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0, v0, v3}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 462
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_shake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 470
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 471
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.motion.ShakeTutorial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0, v0, v3}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 473
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_double_tap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 474
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 475
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 476
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 478
    :cond_8
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 481
    :cond_9
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_pick_up"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 482
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 483
    const-string v1, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0, v0, v3}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 485
    :cond_a
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_pick_up_to_call_out"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 486
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 487
    const-string v1, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 489
    :cond_b
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_overturn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 490
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 491
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_c

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_c

    .line 492
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showUseRingDialog()V

    goto/16 :goto_0

    .line 494
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startTryActually(Z)V

    goto/16 :goto_0

    .line 496
    :cond_d
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "air_motion_glance_view"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 497
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 498
    const-string v1, "android.pickuptutorial.GLANCEVIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    invoke-virtual {p0, v0, v3}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 500
    const-string v0, "MotionTutorialSettings"

    const-string v1, "AIR_MOTION_GLANCE_VIEW"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 501
    :cond_e
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "surface_palm_swipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 503
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 504
    const-string v1, "com.android.pickuptutorial.PALMSWIPETUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    invoke-virtual {p0, v0, v3}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 506
    const-string v0, "MotionTutorialSettings"

    const-string v1, "MotionTutorialSettings Tutorial Palm swipe to capture"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 507
    :cond_f
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "surface_palm_touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 509
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 510
    const-string v1, "android.intent.action.PALM_TOUCH_TUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0, v0, v3}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 512
    const-string v0, "MotionTutorialSettings"

    const-string v1, "MotionTutorialSettings Tutorial Palm touch to mute/pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 513
    :cond_10
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "surface_tap_and_twist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method private startTryActually(Z)V
    .locals 3
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_overturn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 521
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 522
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startActivity(Landroid/content/Intent;)V

    .line 525
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    const-string v0, "MotionTutorialSettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/16 v3, 0x66

    .line 528
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const-string v0, "MotionTutorialSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 532
    iget v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 535
    :cond_2
    iget v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 537
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 538
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->stopAnimation()V

    .line 539
    iget v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationIndex:I

    if-nez v0, :cond_3

    .line 540
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 542
    :cond_3
    iget-boolean v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    if-eqz v0, :cond_5

    .line 543
    iget v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationIndex:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 544
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 546
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 549
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 575
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 577
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 581
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 584
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 585
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 587
    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 211
    const-string v0, "MotionTutorialSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    packed-switch p1, :pswitch_data_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 214
    :pswitch_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-static {v5}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsTablet:Z

    .line 133
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 134
    .local v0, arguments:Landroid/os/Bundle;
    const-string v4, "type"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    .line 136
    .local v1, isMotionTutorial:Z
    :cond_0
    const v4, 0x7f07003a

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->addPreferencesFromResource(I)V

    .line 138
    const-string v4, "glance_view"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mGlanceView:Landroid/preference/Preference;

    .line 139
    const-string v4, "tilt"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    .line 140
    const-string v4, "tilt_to_scroll_list"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTiltToScrollList:Landroid/preference/Preference;

    .line 141
    const-string v4, "pan"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPan:Landroid/preference/Preference;

    .line 142
    const-string v4, "pan_to_browse_image"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPanToBrowseImage:Landroid/preference/Preference;

    .line 143
    const-string v4, "shake"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mShake:Landroid/preference/Preference;

    .line 144
    const-string v4, "double_tap"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mDoubleTap:Landroid/preference/Preference;

    .line 145
    const-string v4, "pick_up"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPickUp:Landroid/preference/Preference;

    .line 146
    const-string v4, "pick_up_to_call_out"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPickUpToCallOut:Landroid/preference/Preference;

    .line 147
    const-string v4, "turn_over"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTurnOver:Landroid/preference/Preference;

    .line 148
    const-string v4, "palm_swipe"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPalmSwipe:Landroid/preference/Preference;

    .line 149
    const-string v4, "palm_touch"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPalmTouch:Landroid/preference/Preference;

    .line 150
    const-string v4, "tap_and_twist"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTapAndTwist:Landroid/preference/Preference;

    .line 152
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 154
    .local v3, ps:Landroid/preference/PreferenceScreen;
    invoke-static {v5}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    .line 157
    .local v2, isTablet:Z
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mGlanceView:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    if-nez v1, :cond_1

    .line 160
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTiltToScrollList:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    if-nez v1, :cond_2

    .line 166
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPan:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :cond_2
    if-nez v1, :cond_3

    .line 169
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPanToBrowseImage:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_5

    .line 172
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mShake:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_7

    .line 175
    :cond_6
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mDoubleTap:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 178
    :cond_8
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPickUp:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    :cond_9
    if-eqz v1, :cond_a

    if-eqz v2, :cond_b

    .line 181
    :cond_a
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPickUpToCallOut:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    :cond_b
    if-eqz v1, :cond_c

    if-eqz v2, :cond_d

    .line 184
    :cond_c
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTurnOver:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    :cond_d
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 187
    :cond_e
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPalmSwipe:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    :cond_f
    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    .line 190
    :cond_10
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPalmTouch:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 193
    :cond_11
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTapAndTwist:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 195
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 206
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->stopAnimation()V

    .line 207
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v5, 0x7f090a3b

    const v4, 0x7f090a3a

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 223
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mGlanceView:Landroid/preference/Preference;

    if-ne p2, v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mGlanceViewTutorialAnimationImage:[I

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 225
    const-string v3, "air_motion_glance_view"

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 226
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a9b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a9c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 228
    iput-boolean v6, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 229
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showGuideDialog()V

    .line 336
    :goto_0
    return v2

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    .line 231
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTiltToZoomAnimationImage:[I

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 232
    const-string v3, "motion_zooming"

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a41

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 235
    iput-boolean v6, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 236
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto :goto_0

    .line 237
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTiltToScrollList:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    .line 238
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTiltToScrollListAnimationImage:[I

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 239
    const-string v3, "motion_tilt_to_list_scrolling"

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 240
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a42

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 242
    iput-boolean v6, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 243
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPan:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    .line 245
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPanToMoveIconAnimationImage:[I

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 246
    iget-boolean v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsTablet:Z

    if-eqz v3, :cond_3

    .line 247
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTabletPanToMoveIconAnimationImage:[I

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 249
    :cond_3
    const-string v3, "motion_panning"

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 250
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 251
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a43

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 252
    iput-boolean v6, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 253
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 254
    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPanToBrowseImage:Landroid/preference/Preference;

    if-ne p2, v3, :cond_6

    .line 255
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPanToBrowseImageAnimationImage:[I

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 256
    iget-boolean v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsTablet:Z

    if-eqz v3, :cond_5

    .line 257
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTabletPanToBrowseImageAnimationImage:[I

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 259
    :cond_5
    const-string v3, "motion_pan_to_browse_image"

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a44

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 262
    iput-boolean v6, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 263
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 264
    :cond_6
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mShake:Landroid/preference/Preference;

    if-ne p2, v3, :cond_8

    .line 265
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mShakeToUpdateAnimationImage:[I

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 266
    const-string v3, "motion_shake"

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 267
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a3c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a45

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 269
    const/4 v1, 0x1

    .line 271
    .local v1, isKiesWiFiInstalled:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.kieswifi"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_1
    if-nez v1, :cond_7

    .line 276
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a46

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 278
    :cond_7
    iput-boolean v6, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 279
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_1

    .line 280
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #isKiesWiFiInstalled:Z
    :cond_8
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mDoubleTap:Landroid/preference/Preference;

    if-ne p2, v3, :cond_9

    .line 281
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mDoubleTapToGoTopAnimationImage:[I

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 282
    const-string v3, "motion_double_tap"

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 283
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a3d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 284
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a47

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 285
    iput-boolean v2, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 286
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 287
    :cond_9
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPickUp:Landroid/preference/Preference;

    if-ne p2, v3, :cond_a

    .line 288
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPickUpToBeNotifiedAnimationImage:[I

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 289
    const-string v3, "motion_pick_up"

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 290
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a3e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 291
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a48

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 296
    iput-boolean v6, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 297
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 298
    :cond_a
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPickUpToCallOut:Landroid/preference/Preference;

    if-ne p2, v3, :cond_b

    .line 299
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPickUpToCallOutAnimationImage:[I

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 300
    const-string v3, "motion_pick_up_to_call_out"

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 301
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a3f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 302
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a5a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 303
    iput-boolean v6, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 304
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 305
    :cond_b
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTurnOver:Landroid/preference/Preference;

    if-ne p2, v3, :cond_c

    .line 306
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTurnOverToMuteAnimationImage:[I

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 307
    const-string v3, "motion_overturn"

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a40

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a4b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 310
    iput-boolean v6, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 311
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 312
    :cond_c
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPalmSwipe:Landroid/preference/Preference;

    if-ne p2, v3, :cond_d

    .line 313
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mSurfacePalmSwipeAnimationImage:[I

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 314
    const-string v3, "surface_palm_swipe"

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a64

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 316
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a65

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 317
    iput-boolean v6, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 318
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 319
    :cond_d
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mPalmTouch:Landroid/preference/Preference;

    if-ne p2, v3, :cond_e

    .line 320
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mSurfacePalmTouchAnimationImage:[I

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 321
    const-string v3, "surface_palm_touch"

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 322
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a66

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 323
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a67

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 324
    iput-boolean v6, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 325
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 326
    :cond_e
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTapAndTwist:Landroid/preference/Preference;

    if-ne p2, v3, :cond_f

    .line 327
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mSurfaceTapAndTwistAnimationImage:[I

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 328
    const-string v3, "surface_tap_and_twist"

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 329
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a68

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 330
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a69

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 331
    iput-boolean v6, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 332
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 334
    :cond_f
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 200
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->updateAnimation()V

    .line 201
    return-void
.end method

.method public showGuideDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 373
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 374
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->allDialogDismiss()V

    .line 376
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 377
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04004c

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 378
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b002a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 379
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f0b00b7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 381
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 383
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 385
    const v4, 0x7f090a4c

    new-instance v5, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$4;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$4;-><init>(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090125

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 396
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 397
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 398
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$5;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$5;-><init>(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 403
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startAnimation()V

    .line 404
    return-void
.end method
