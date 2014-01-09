.class public Lcom/sec/android/glview/TwGLContext;
.super Ljava/lang/Object;
.source "TwGLContext.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_FOCUS_RECT_COLOR:I = 0x0

.field public static final DEFAULT_FOCUS_RECT_THICKNESS_DIP:I = 0x3

.field public static final FOCUSED:I = 0x1

.field public static final NOT_FOCUSED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwGLRenderer"

.field private static mResources:Landroid/content/res/Resources;


# instance fields
.field protected mApplicationContext:Landroid/content/Context;

.field private mAutoOrientationStatus:Z

.field private mClipRect:Landroid/graphics/Rect;

.field private mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

.field private mDensity:F

.field private mDirty:Z

.field private mFocusIndicatorVisibilityChanged:Z

.field private mFocusRectColor:I

.field private mFocusRectThickness:I

.field private mFocusResId:I

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mGl:Ljavax/microedition/khronos/opengles/GL11;

.field private mHeight:I

.field private mIdentityMatrix:[F

.field private mIsFocusIndicatorVisible:Z

.field private mLastOrientation:I

.field private mLastTouchView:Lcom/sec/android/glview/TwGLView;

.field private mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

.field private mMainHandler:Landroid/os/Handler;

.field private mOrientationEnabled:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRootView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mScrollBarAutoHide:Z

.field private mTexturesToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 120
    const/16 v0, 0x32

    const/16 v1, 0xc8

    invoke-static {v2, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/glview/TwGLContext;->DEFAULT_FOCUS_RECT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;Landroid/opengl/GLSurfaceView;)V
    .locals 4
    .parameter "c"
    .parameter "l"
    .parameter "surfaceView"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 71
    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 73
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mAutoOrientationStatus:Z

    .line 76
    iput v2, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    .line 82
    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 88
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mIdentityMatrix:[F

    .line 90
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mIdentityMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mClipRect:Landroid/graphics/Rect;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mMainHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    .line 105
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mDirty:Z

    .line 107
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z

    .line 109
    iput-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mScrollBarAutoHide:Z

    .line 111
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mDensity:F

    .line 114
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 116
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 122
    iput v2, p0, Lcom/sec/android/glview/TwGLContext;->mFocusRectThickness:I

    .line 124
    sget v0, Lcom/sec/android/glview/TwGLContext;->DEFAULT_FOCUS_RECT_COLOR:I

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mFocusRectColor:I

    .line 126
    const v0, 0x7f0201f9

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mFocusResId:I

    .line 162
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    .line 163
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/sec/android/glview/TwGLContext;->mResources:Landroid/content/res/Resources;

    .line 164
    iput-object p2, p0, Lcom/sec/android/glview/TwGLContext;->mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

    .line 165
    iput-object p3, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 167
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mDensity:F

    .line 168
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mDensity:F

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mFocusRectThickness:I

    .line 170
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLContext;->setOrientationListener()V

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i).*talkback.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 174
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/glview/TwGLContext;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/glview/TwGLContext;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/glview/TwGLContext;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z

    return v0
.end method

.method public static getDimension(I)F
    .locals 1
    .parameter "id"

    .prologue
    .line 199
    sget-object v0, Lcom/sec/android/glview/TwGLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public static getInteger(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 203
    sget-object v0, Lcom/sec/android/glview/TwGLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private setOrientationListener()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 657
    new-instance v0, Lcom/sec/android/glview/TwGLContext$1;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/glview/TwGLContext$1;-><init>(Lcom/sec/android/glview/TwGLContext;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 679
    return-void
.end method


# virtual methods
.method public addTextureToDelete(Lcom/sec/android/glview/TwGLTexture;)V
    .locals 2
    .parameter "texture"

    .prologue
    .line 742
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    monitor-exit v1

    .line 745
    return-void

    .line 744
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 212
    :cond_0
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 214
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    .line 216
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 218
    :cond_1
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 220
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

    .line 222
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 224
    monitor-exit v1

    .line 226
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->onFocusStatusChanged(I)V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 282
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 283
    return-void
.end method

.method public dumpViewHierarchy()V
    .locals 2

    .prologue
    .line 734
    const-string v0, "DUMP"

    const-string v1, "=======================DUMP_START======================="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->dumpViewHierarchy(I)V

    .line 738
    :cond_0
    const-string v0, "DUMP"

    const-string v1, "=======================DUMP_END======================="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return-void
.end method

.method public enableOrientation(Z)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 722
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z

    .line 723
    return-void
.end method

.method public findNextFocusFromView(Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;
    .locals 2
    .parameter "rootView"
    .parameter "focusedView"
    .parameter "direction"

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, resultView:Lcom/sec/android/glview/TwGLView;
    if-nez p1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 536
    :goto_0
    return-object v0

    .line 534
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_0
.end method

.method public findViewById(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "id"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 526
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "tag"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 512
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mDensity:F

    return v0
.end method

.method public getFocusRectColor()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mFocusRectColor:I

    return v0
.end method

.method public getFocusRectThickness()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mFocusRectThickness:I

    return v0
.end method

.method public getFocusResourceId()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mFocusResId:I

    return v0
.end method

.method public getGL()Ljavax/microedition/khronos/opengles/GL11;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGl:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method public getLastOrientation()I
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    return v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRootView()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public getScreenAspectRatio()F
    .locals 2

    .prologue
    .line 252
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected final getScreenGeometry()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    return v0
.end method

.method public getScrollBarAutoHide()Z
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mScrollBarAutoHide:Z

    return v0
.end method

.method public getTts()Landroid/speech/tts/TextToSpeech;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method public isFocusIndicatorVisible()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .parameter "gl"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v1, 0x0

    .line 575
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v2

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/glview/TwGLTexture;

    .line 577
    .local v8, texture:Lcom/sec/android/glview/TwGLTexture;
    invoke-virtual {v8, p1}, Lcom/sec/android/glview/TwGLTexture;->clearTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 580
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #texture:Lcom/sec/android/glview/TwGLTexture;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 579
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 580
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getScreenAspectRatio()F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 585
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mDirty:Z

    .line 587
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 588
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 589
    const/4 v0, 0x1

    const/16 v2, 0x303

    invoke-interface {p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 591
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 592
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 593
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v0

    int-to-float v3, v0

    const/high16 v5, -0x4080

    move-object v0, p1

    move v4, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 595
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mIdentityMatrix:[F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 597
    :cond_2
    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 491
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->onFocusStatusChanged(I)V

    .line 494
    :cond_0
    if-eqz p1, :cond_1

    .line 495
    invoke-virtual {p1, v2}, Lcom/sec/android/glview/TwGLView;->onFocusStatusChanged(I)V

    .line 497
    :cond_1
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 498
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 499
    return-void
.end method

.method public onInit(I)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 750
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v7, 0x82

    const/16 v6, 0x42

    const/16 v5, 0x21

    const/16 v4, 0x11

    const/4 v1, 0x1

    .line 306
    const/4 v0, 0x0

    .line 308
    .local v0, result:Z
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-nez v2, :cond_0

    .line 309
    sparse-switch p1, :sswitch_data_0

    .line 325
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v2, :cond_2

    .line 327
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    if-nez v2, :cond_1

    .line 328
    sparse-switch p1, :sswitch_data_1

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/glview/TwGLView;->keyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 342
    if-nez v0, :cond_2

    .line 343
    packed-switch p1, :pswitch_data_0

    .line 427
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    move v1, v0

    .line 428
    :goto_1
    return v1

    .line 316
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 317
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 318
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 319
    const/4 v1, 0x0

    goto :goto_1

    .line 321
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 335
    :sswitch_1
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 336
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 337
    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto :goto_1

    .line 349
    :pswitch_0
    iget v2, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 351
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    .line 352
    goto :goto_0

    .line 354
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v6, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    .line 355
    goto :goto_0

    .line 357
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    .line 358
    goto :goto_0

    .line 360
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    goto :goto_0

    .line 369
    :pswitch_5
    iget v2, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    packed-switch v2, :pswitch_data_2

    goto :goto_0

    .line 371
    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v6, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    .line 372
    goto :goto_0

    .line 374
    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    .line 375
    goto :goto_0

    .line 377
    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    .line 378
    goto :goto_0

    .line 380
    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    goto :goto_0

    .line 389
    :pswitch_a
    iget v2, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    packed-switch v2, :pswitch_data_3

    goto :goto_0

    .line 391
    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    .line 392
    goto :goto_0

    .line 394
    :pswitch_c
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    .line 395
    goto/16 :goto_0

    .line 397
    :pswitch_d
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v6, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    .line 398
    goto/16 :goto_0

    .line 400
    :pswitch_e
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    goto/16 :goto_0

    .line 409
    :pswitch_f
    iget v2, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_0

    .line 411
    :pswitch_10
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    .line 412
    goto/16 :goto_0

    .line 414
    :pswitch_11
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    .line 415
    goto/16 :goto_0

    .line 417
    :pswitch_12
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    .line 418
    goto/16 :goto_0

    .line 420
    :pswitch_13
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v6, v3}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v0

    goto/16 :goto_0

    .line 309
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 328
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch

    .line 343
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_a
        :pswitch_f
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 349
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 369
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch

    .line 389
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
    .end packed-switch

    .line 409
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_12
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, result:Z
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    if-eqz v2, :cond_0

    .line 434
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 455
    :goto_0
    return v1

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/glview/TwGLView;->keyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 440
    :cond_1
    if-nez v0, :cond_2

    .line 441
    sparse-switch p1, :sswitch_data_0

    .line 454
    :cond_2
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    move v1, v0

    .line 455
    goto :goto_0

    .line 444
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getOnClickListener()Lcom/sec/android/glview/TwGLView$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getOnClickListener()Lcom/sec/android/glview/TwGLView$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-interface {v1, v2}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    move-result v0

    goto :goto_1

    .line 449
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->dumpViewHierarchy()V

    goto :goto_1

    .line 441
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x20 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 559
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->reset()V

    .line 561
    return-void

    .line 559
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 550
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 605
    const-string v0, "TwGLRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLSurfaceChanged**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iput p2, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    .line 609
    iput p3, p0, Lcom/sec/android/glview/TwGLContext;->mHeight:I

    .line 611
    invoke-interface {p1, v4, v4, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 612
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 614
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 618
    :cond_0
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mGl:Ljavax/microedition/khronos/opengles/GL11;

    .line 620
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-interface {v0, v1}, Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V

    .line 623
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 624
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter "gl"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    .line 632
    const-string v0, "TwGLRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 635
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 637
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 638
    const/16 v0, 0xc11

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 639
    const/16 v0, 0xb90

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 640
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 642
    const/high16 v0, 0x3f80

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 643
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 644
    const/16 v0, 0x203

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 645
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 647
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v0, :cond_0

    .line 648
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-direct {v0, p0, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 650
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, result:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 469
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    .line 472
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 486
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 487
    return v0

    .line 474
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 475
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    .line 477
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    .line 478
    const/4 v0, 0x1

    goto :goto_0

    .line 481
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public refreshOrientation()V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mAutoOrientationStatus:Z

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 704
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 706
    :cond_0
    return-void
.end method

.method public resetOrientation()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 712
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mAutoOrientationStatus:Z

    .line 714
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mAutoOrientationStatus:Z

    if-nez v0, :cond_0

    .line 715
    iput v2, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    .line 716
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 717
    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 719
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 712
    goto :goto_0
.end method

.method public resumeOrientationListener()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 567
    :cond_0
    return-void
.end method

.method public setDirty(Z)V
    .locals 1
    .parameter "dirty"

    .prologue
    .line 540
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mDirty:Z

    .line 541
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mDirty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 544
    :cond_0
    return-void
.end method

.method public setFocusRectThickness(I)V
    .locals 2
    .parameter "thicknessDIP"

    .prologue
    .line 286
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mDensity:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mFocusRectThickness:I

    .line 287
    return-void
.end method

.method public setFocusResourceId(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 298
    iput p1, p0, Lcom/sec/android/glview/TwGLContext;->mFocusResId:I

    .line 299
    return-void
.end method

.method public setScrollBarAutoHide(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 726
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mScrollBarAutoHide:Z

    .line 727
    return-void
.end method
