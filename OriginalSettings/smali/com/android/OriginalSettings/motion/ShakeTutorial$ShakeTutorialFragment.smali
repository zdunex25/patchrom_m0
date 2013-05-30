.class public Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "ShakeTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/motion/ShakeTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShakeTutorialFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;
    }
.end annotation


# static fields
.field private static final mAnimationImage:[I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

.field private mBTdevice1:Landroid/preference/Preference;

.field private mBTdevice2:Landroid/preference/Preference;

.field private mCanShake:Z

.field private mContext:Landroid/content/Context;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mRetryDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationImage:[I

    return-void

    :array_0
    .array-data 0x4
        0xf9t 0x1t 0x2t 0x7ft
        0xfat 0x1t 0x2t 0x7ft
        0xf9t 0x1t 0x2t 0x7ft
        0xfat 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    .line 64
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mRetryDialog:Landroid/app/AlertDialog;

    .line 67
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    .line 69
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    .line 71
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    .line 76
    new-instance v0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$1;-><init>(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$2;-><init>(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$3;-><init>(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 335
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    return p1
.end method

.method static synthetic access$200()Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)Landroid/hardware/motion/MRListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->removeBTPreference()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->addBTPreference()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->stopAnimation()V

    return-void
.end method

.method private addBTPreference()V
    .locals 3

    .prologue
    const v2, 0x7f04009c

    .line 231
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    .line 232
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 233
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    const-string v1, "BT device 1"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 235
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    .line 236
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 237
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    const-string v1, "BT device 2"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 239
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 240
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 241
    return-void
.end method

.method private removeBTPreference()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->removeAll()V

    .line 245
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 321
    const-string v0, "ShakeTutorial"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    .line 324
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->updateAnimation()V

    .line 326
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 329
    const-string v0, "ShakeTutorial"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 301
    const-string v0, "ShakeTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationImage:[I

    iget v2, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    iget v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    .line 307
    :cond_0
    iget v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    .line 309
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->stopAnimation()V

    .line 311
    iget v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    if-nez v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 154
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 159
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, myDevicePreference:Landroid/preference/Preference;
    const v2, 0x7f090086

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 161
    const v2, 0x7f09008a

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const v2, 0x7f0200ce

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 167
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 168
    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 172
    new-instance v2, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;-><init>(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    .line 173
    iget-object v2, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    const v3, 0x7f0901cb

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->setTitle(I)V

    .line 174
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 176
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "motion_recognition"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v2, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 177
    iput-boolean v5, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    .line 178
    return-void

    .line 165
    :cond_0
    const v2, 0x7f0200dc

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 138
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 139
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    .line 140
    const-string v0, "ShakeTutorial"

    const-string v1, "context is assigned"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->addPreferencesFromResource(I)V

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->setHasOptionsMenu(Z)V

    .line 150
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 206
    const v1, 0x7f090012

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0201e8

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 208
    .local v0, information:Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 209
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 211
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 215
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 217
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->showGuideDialog()V

    .line 218
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 191
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->stopAnimation()V

    .line 192
    sget-object v0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 194
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 183
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->updateAnimation()V

    .line 184
    sget-object v0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 186
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "ShakeTutorial"

    const-string v1, "onStop : remove handler message"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 200
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 201
    return-void
.end method

.method public showGuideDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 275
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 277
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 278
    iput-object v6, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 282
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04004c

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 283
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b002a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 284
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f0b00b7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    .line 286
    const v4, 0x7f090a45

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 287
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 288
    const v4, 0x7f090a3c

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 289
    const v4, 0x7f0905b8

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    .line 291
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 292
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$6;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$6;-><init>(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 297
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;->startAnimation()V

    .line 298
    return-void
.end method
