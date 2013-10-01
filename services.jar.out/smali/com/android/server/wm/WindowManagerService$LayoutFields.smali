.class Lcom/android/server/wm/WindowManagerService$LayoutFields;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutFields"
.end annotation


# static fields
.field private static final DISPLAY_CONTENT_MIRROR:I = 0x1

.field private static final DISPLAY_CONTENT_UNIQUE:I = 0x2

.field private static final DISPLAY_CONTENT_UNKNOWN:I = 0x0

.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_TURN_ON_SCREEN:I = 0x10

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2


# instance fields
.field mAdjResult:I

.field private mButtonBrightness:F

.field mDimming:Z

.field private mDisplayHasContent:I

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field private mObscured:Z

.field mOrientationChangeComplete:Z

.field private mScreenBrightness:F

.field private mSyswin:Z

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v1, -0x4080

    const/4 v2, 0x0

    .line 594
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperForceHidingChanged:Z

    .line 602
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperMayChange:Z

    .line 603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mOrientationChangeComplete:Z

    .line 604
    iput v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mAdjResult:I

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 606
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    .line 607
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDimming:Z

    .line 608
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    .line 609
    iput v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    .line 610
    iput v1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    .line 611
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    .line 612
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    .line 617
    iput v2, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:I

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Lcom/android/server/wm/Session;
    .locals 1
    .parameter "x0"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/wm/WindowManagerService$LayoutFields;Lcom/android/server/wm/Session;)Lcom/android/server/wm/Session;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mHoldScreen:Lcom/android/server/wm/Session;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 594
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mSyswin:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 594
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 594
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mScreenBrightness:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 594
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 594
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mButtonBrightness:F

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/wm/WindowManagerService$LayoutFields;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 594
    iget-wide v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/server/wm/WindowManagerService$LayoutFields;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 594
    iput-wide p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUserActivityTimeout:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/server/wm/WindowManagerService$LayoutFields;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 594
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/wm/WindowManagerService$LayoutFields;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 594
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mDisplayHasContent:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 594
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mObscured:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 594
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mUpdateRotation:Z

    return p1
.end method
