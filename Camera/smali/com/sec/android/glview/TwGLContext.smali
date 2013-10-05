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
.field public static final FOCUSED:I = 0x1

.field public static final HOVER_ENTER:I = 0x0

.field public static final HOVER_EXIT:I = 0x1

.field public static final NOT_FOCUSED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwGLRenderer"

.field private static mResources:Landroid/content/res/Resources;


# instance fields
.field protected mApplicationContext:Landroid/content/Context;

.field private mAutoOrientationStatus:Z

.field private mClipRect:Landroid/graphics/Rect;

.field private mCurrentDrawTime:J

.field private mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

.field private mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

.field private mDensity:F

.field private mDirty:Z

.field private mDisplayRotation:I

.field private mFocusIndicatorVisibilityChanged:Z

.field private mFocusResId:I

.field private mFullScreenHeight:I

.field private mFullScreenWidth:I

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mGl:Ljavax/microedition/khronos/opengles/GL11;

.field private mHScale:F

.field private mHeight:I

.field private mHoverBaseView:Landroid/view/View;

.field private mHoverResId:I

.field private mIdentityMatrix:[F

.field private mIsFocusIndicatorVisible:Z

.field private mLastHoverView:Lcom/sec/android/glview/TwGLView;

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

.field private mWScale:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;Landroid/opengl/GLSurfaceView;)V
    .locals 5
    .parameter "c"
    .parameter "l"
    .parameter "surfaceView"

    .prologue
    const/4 v4, 0x1

    const/high16 v1, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v1, p0, Lcom/sec/android/glview/TwGLContext;->mWScale:F

    .line 76
    iput v1, p0, Lcom/sec/android/glview/TwGLContext;->mHScale:F

    .line 79
    iput-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 87
    iput-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 89
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mAutoOrientationStatus:Z

    .line 92
    iput v2, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    .line 102
    iput-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 104
    iput-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 110
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mIdentityMatrix:[F

    .line 112
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mIdentityMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mClipRect:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mMainHandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    .line 129
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mDirty:Z

    .line 131
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z

    .line 133
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLContext;->mScrollBarAutoHide:Z

    .line 135
    iput v1, p0, Lcom/sec/android/glview/TwGLContext;->mDensity:F

    .line 138
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 140
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 142
    const v0, 0x7f020206

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mFocusResId:I

    .line 144
    const v0, 0x7f020209

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mHoverResId:I

    .line 146
    iput v2, p0, Lcom/sec/android/glview/TwGLContext;->mDisplayRotation:I

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentDrawTime:J

    .line 150
    iput-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mHoverBaseView:Landroid/view/View;

    .line 186
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    .line 187
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/sec/android/glview/TwGLContext;->mResources:Landroid/content/res/Resources;

    .line 188
    iput-object p2, p0, Lcom/sec/android/glview/TwGLContext;->mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

    .line 189
    iput-object p3, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 191
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mDensity:F

    .line 193
    const v0, 0x7f07009a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mFullScreenWidth:I

    .line 194
    const v0, 0x7f07009b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mFullScreenHeight:I

    .line 196
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLContext;->setOrientationListener()V

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

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

    .line 199
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 200
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/glview/TwGLContext;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/glview/TwGLContext;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLContext;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/glview/TwGLContext;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z

    return v0
.end method

.method public static getDimension(I)F
    .locals 1
    .parameter "id"

    .prologue
    .line 225
    sget-object v0, Lcom/sec/android/glview/TwGLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public static getInteger(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 229
    sget-object v0, Lcom/sec/android/glview/TwGLContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private setOrientationListener()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 853
    new-instance v0, Lcom/sec/android/glview/TwGLContext$1;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/glview/TwGLContext$1;-><init>(Lcom/sec/android/glview/TwGLContext;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 878
    return-void
.end method


# virtual methods
.method public addTextureToDelete(Lcom/sec/android/glview/TwGLTexture;)V
    .locals 2
    .parameter "texture"

    .prologue
    .line 941
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 942
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    monitor-exit v1

    .line 944
    return-void

    .line 943
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

    .line 236
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 238
    :cond_0
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 240
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    .line 242
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 244
    :cond_1
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 246
    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

    .line 248
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 250
    monitor-exit v1

    .line 252
    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 322
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->onFocusStatusChanged(I)V

    .line 324
    iput-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 328
    iput-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 330
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 331
    return-void
.end method

.method public dumpViewHierarchy()V
    .locals 2

    .prologue
    .line 933
    const-string v0, "DUMP"

    const-string v1, "=======================DUMP_START======================="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->dumpViewHierarchy(I)V

    .line 937
    :cond_0
    const-string v0, "DUMP"

    const-string v1, "=======================DUMP_END======================="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return-void
.end method

.method public enableOrientation(Z)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 921
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationEnabled:Z

    .line 922
    return-void
.end method

.method public findNextFocusFromView(Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;
    .locals 2
    .parameter "rootView"
    .parameter "focusedView"
    .parameter "direction"

    .prologue
    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, resultView:Lcom/sec/android/glview/TwGLView;
    if-nez p1, :cond_0

    .line 687
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 691
    :goto_0
    return-object v0

    .line 689
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    goto :goto_0
.end method

.method public findViewById(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "id"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 681
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
    .line 664
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 667
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentDrawTime()J
    .locals 2

    .prologue
    .line 762
    iget-wide v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentDrawTime:J

    return-wide v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mDensity:F

    return v0
.end method

.method public getFocusResourceId()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mFocusResId:I

    return v0
.end method

.method public getGL()Ljavax/microedition/khronos/opengles/GL11;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGl:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method public getHoverBaseView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mHoverBaseView:Landroid/view/View;

    return-object v0
.end method

.method public getHoverResourceId()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mHoverResId:I

    return v0
.end method

.method public getLastOrientation()I
    .locals 1

    .prologue
    .line 894
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    return v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRootView()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public getScreenAspectRatio()F
    .locals 2

    .prologue
    .line 278
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
    .line 885
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScreenHScale()F
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mHScale:F

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mHeight:I

    return v0
.end method

.method public getScreenWScale()F
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mWScale:F

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    return v0
.end method

.method public getScrollBarAutoHide()Z
    .locals 1

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mScrollBarAutoHide:Z

    return v0
.end method

.method public getTts()Landroid/speech/tts/TextToSpeech;
    .locals 3

    .prologue
    .line 952
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

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

    .line 955
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method public isFocusIndicatorVisible()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    return v0
.end method

.method public isHoveringEnabled()Z
    .locals 1

    .prologue
    .line 979
    const/4 v0, 0x0

    return v0
.end method

.method protected isHoveringIconLabelEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 989
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_icon_label"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 992
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected isHoveringPointerEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 997
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_pointer"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1000
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isScreenReaderActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 961
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 966
    :cond_1
    :goto_0
    return v0

    .line 963
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    .line 966
    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 970
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "touch_exploration_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 973
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .parameter "gl"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v1, 0x0

    .line 732
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v2

    .line 733
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

    .line 734
    .local v8, texture:Lcom/sec/android/glview/TwGLTexture;
    invoke-virtual {v8, p1}, Lcom/sec/android/glview/TwGLTexture;->clearTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 737
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #texture:Lcom/sec/android/glview/TwGLTexture;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 736
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 737
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 739
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getScreenAspectRatio()F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 742
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mDirty:Z

    .line 744
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 745
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 746
    const/4 v0, 0x1

    const/16 v2, 0x303

    invoke-interface {p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 748
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 749
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 750
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

    .line 752
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 753
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentDrawTime:J

    .line 754
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mIdentityMatrix:[F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 756
    :cond_2
    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 592
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->onFocusStatusChanged(I)V

    .line 595
    :cond_0
    if-eqz p1, :cond_1

    .line 596
    invoke-virtual {p1, v2}, Lcom/sec/android/glview/TwGLView;->onFocusStatusChanged(I)V

    .line 598
    :cond_1
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 599
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 600
    if-nez p1, :cond_4

    .line 601
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 604
    :cond_2
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 609
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 610
    return-void

    .line 606
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLContext;->onHoverChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onHoverChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "view"
    .parameter "e"

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 613
    if-nez p1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 617
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v2, :cond_2

    .line 619
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 621
    :cond_2
    invoke-virtual {p1, v5}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 622
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 623
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 624
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 627
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 628
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 630
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :cond_4
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 631
    invoke-virtual {p0, v6}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto :goto_0

    .line 633
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isHoveringEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v2, :cond_6

    .line 635
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 637
    :cond_6
    invoke-virtual {p1, v5}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 638
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_7

    .line 639
    if-eqz p2, :cond_7

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 640
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHoverPopupWindow()Lcom/sec/android/glview/HoverPopupWindow;

    move-result-object v0

    .line 642
    .local v0, popup:Lcom/sec/android/glview/HoverPopupWindow;
    if-eqz v0, :cond_7

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/HoverPopupWindow;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 643
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/HoverPopupWindow;->setHoveringPoint(II)V

    .line 645
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    .line 646
    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->dismiss()V

    .line 653
    .end local v0           #popup:Lcom/sec/android/glview/HoverPopupWindow;
    :cond_7
    :goto_1
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    goto/16 :goto_0

    .line 648
    .restart local v0       #popup:Lcom/sec/android/glview/HoverPopupWindow;
    :cond_8
    invoke-virtual {v0}, Lcom/sec/android/glview/HoverPopupWindow;->show()V

    goto :goto_1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 523
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_1

    .line 524
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    .line 525
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    .line 526
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_0

    .line 527
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/glview/TwGLContext;->onHoverChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V

    .line 529
    :cond_0
    const-string v3, "TwGLRenderer"

    const-string v4, "--------ENTER----------"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 556
    :cond_2
    return v1

    .line 530
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_6

    .line 531
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 532
    .local v0, tempView:Lcom/sec/android/glview/TwGLView;
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    if-eq v0, v3, :cond_2

    .line 535
    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    .line 536
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_5

    .line 537
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastHoverView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/glview/TwGLContext;->onHoverChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V

    .line 543
    :cond_4
    :goto_1
    const-string v3, "TwGLRenderer"

    const-string v4, "--------MOVE--------"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isHoveringEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 539
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_4

    .line 540
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v2}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    goto :goto_1

    .line 544
    .end local v0           #tempView:Lcom/sec/android/glview/TwGLView;
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 545
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isHoveringEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 546
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_7

    .line 547
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentHoverFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v2}, Lcom/sec/android/glview/TwGLView;->onHoverStatusChanged(I)V

    .line 550
    :cond_7
    const-string v3, "TwGLRenderer"

    const-string v4, "--------EXIT--------"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onInit(I)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 947
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 949
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x82

    const/16 v7, 0x42

    const/16 v6, 0x21

    const/16 v5, 0x11

    const/4 v2, 0x1

    .line 350
    const/4 v1, 0x0

    .line 352
    .local v1, result:Z
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-nez v3, :cond_0

    .line 353
    sparse-switch p1, :sswitch_data_0

    .line 369
    :cond_0
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_2

    .line 371
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    if-nez v3, :cond_1

    .line 372
    sparse-switch p1, :sswitch_data_1

    .line 385
    :cond_1
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/glview/TwGLView;->keyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 386
    if-nez v1, :cond_2

    .line 387
    sparse-switch p1, :sswitch_data_2

    .line 474
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 475
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mApplicationContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 476
    .local v0, audioManager:Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    .line 491
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    move v2, v1

    .line 492
    :goto_2
    :sswitch_0
    return v2

    .line 360
    :sswitch_1
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 361
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 362
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 363
    const/4 v2, 0x0

    goto :goto_2

    .line 365
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 379
    :sswitch_2
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 380
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 381
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto :goto_2

    .line 396
    :sswitch_3
    iget v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 398
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 399
    goto :goto_0

    .line 401
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v7, v4}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 402
    goto :goto_0

    .line 404
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v6, v4}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 405
    goto :goto_0

    .line 407
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v8, v4}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    goto :goto_0

    .line 416
    :sswitch_4
    iget v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    packed-switch v3, :pswitch_data_2

    goto :goto_0

    .line 418
    :pswitch_4
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v7, v4}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 419
    goto :goto_0

    .line 421
    :pswitch_5
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 422
    goto :goto_0

    .line 424
    :pswitch_6
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v8, v4}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 425
    goto :goto_0

    .line 427
    :pswitch_7
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v6, v4}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    goto :goto_0

    .line 436
    :sswitch_5
    iget v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    packed-switch v3, :pswitch_data_3

    goto/16 :goto_0

    .line 438
    :pswitch_8
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v6, v4}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 439
    goto/16 :goto_0

    .line 441
    :pswitch_9
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v8, v4}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 442
    goto/16 :goto_0

    .line 444
    :pswitch_a
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v7, v4}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 445
    goto/16 :goto_0

    .line 447
    :pswitch_b
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    goto/16 :goto_0

    .line 456
    :sswitch_6
    iget v3, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    packed-switch v3, :pswitch_data_4

    goto/16 :goto_0

    .line 458
    :pswitch_c
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v8, v4}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 459
    goto/16 :goto_0

    .line 461
    :pswitch_d
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v6, v4}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 462
    goto/16 :goto_0

    .line 464
    :pswitch_e
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    .line 465
    goto/16 :goto_0

    .line 467
    :pswitch_f
    iget-object v3, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v7, v4}, Lcom/sec/android/glview/TwGLView;->requestFocus(ILcom/sec/android/glview/TwGLView;)Z

    move-result v1

    goto/16 :goto_0

    .line 478
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :pswitch_10
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 481
    :pswitch_11
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 484
    :pswitch_12
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 487
    :pswitch_13
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch

    .line 372
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch

    .line 387
    :sswitch_data_2
    .sparse-switch
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 476
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_12
        :pswitch_13
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 396
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 416
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 436
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 456
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, result:Z
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    if-eqz v2, :cond_0

    .line 498
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mFocusIndicatorVisibilityChanged:Z

    .line 519
    :goto_0
    return v1

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/glview/TwGLView;->keyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 504
    :cond_1
    if-nez v0, :cond_2

    .line 505
    sparse-switch p1, :sswitch_data_0

    .line 518
    :cond_2
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    move v1, v0

    .line 519
    goto :goto_0

    .line 508
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getOnClickListener()Lcom/sec/android/glview/TwGLView$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 509
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getOnClickListener()Lcom/sec/android/glview/TwGLView$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mCurrentFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-interface {v1, v2}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    move-result v0

    goto :goto_1

    .line 513
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->dumpViewHierarchy()V

    goto :goto_1

    .line 505
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
    .line 708
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    monitor-enter v1

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mTexturesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 714
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getPreserveEGLContextOnPause()Z

    move-result v0

    if-nez v0, :cond_1

    .line 716
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->reset()V

    .line 718
    :cond_1
    return-void

    .line 714
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
    .line 702
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 705
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

    .line 771
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

    .line 772
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

    .line 774
    iput p2, p0, Lcom/sec/android/glview/TwGLContext;->mWidth:I

    .line 775
    iput p3, p0, Lcom/sec/android/glview/TwGLContext;->mHeight:I

    .line 782
    invoke-interface {p1, v4, v4, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 787
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 790
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 798
    :cond_0
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mGl:Ljavax/microedition/khronos/opengles/GL11;

    .line 800
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mListener:Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-interface {v0, v1}, Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V

    .line 803
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 804
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter "gl"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    .line 812
    const-string v0, "TwGLRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 815
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 817
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 818
    const/16 v0, 0xc11

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 820
    const/16 v0, 0xb90

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 821
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 823
    const/high16 v0, 0x3f80

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 824
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 825
    const/16 v0, 0x203

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 827
    const/16 v0, 0xc50

    const/16 v1, 0x1102

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 830
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v0, :cond_0

    .line 831
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-direct {v0, p0, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 833
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 567
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 568
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 569
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLContext;->mIsFocusIndicatorVisible:Z

    .line 571
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v2, :cond_3

    .line 572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 573
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    .line 574
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_3

    .line 575
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 588
    :goto_0
    return v0

    .line 576
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 577
    iget-object v2, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v2, :cond_3

    .line 578
    iget-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    .line 579
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    goto :goto_0

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_3

    .line 584
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mLastTouchView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 588
    goto :goto_0
.end method

.method public refreshOrientation()V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mAutoOrientationStatus:Z

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 903
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 905
    :cond_0
    return-void
.end method

.method public resetOrientation()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 911
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

    .line 913
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mAutoOrientationStatus:Z

    if-nez v0, :cond_0

    .line 914
    iput v2, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    .line 915
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/glview/TwGLContext;->mLastOrientation:I

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    .line 916
    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 918
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 911
    goto :goto_0
.end method

.method public resumeOrientationListener()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 724
    :cond_0
    return-void
.end method

.method public setDirty(Z)V
    .locals 1
    .parameter "dirty"

    .prologue
    .line 695
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mDirty:Z

    .line 696
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLContext;->mDirty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/sec/android/glview/TwGLContext;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 699
    :cond_0
    return-void
.end method

.method public setDisplayRotation(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    const/4 v0, 0x0

    .line 839
    packed-switch p1, :pswitch_data_0

    .line 844
    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mDisplayRotation:I

    .line 846
    :goto_0
    return-void

    .line 840
    :pswitch_0
    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mDisplayRotation:I

    goto :goto_0

    .line 841
    :pswitch_1
    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mDisplayRotation:I

    goto :goto_0

    .line 842
    :pswitch_2
    const/16 v0, 0xb4

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mDisplayRotation:I

    goto :goto_0

    .line 843
    :pswitch_3
    const/16 v0, 0x10e

    iput v0, p0, Lcom/sec/android/glview/TwGLContext;->mDisplayRotation:I

    goto :goto_0

    .line 839
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setFocusResourceId(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 334
    iput p1, p0, Lcom/sec/android/glview/TwGLContext;->mFocusResId:I

    .line 335
    return-void
.end method

.method public setHoverBaseView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/sec/android/glview/TwGLContext;->mHoverBaseView:Landroid/view/View;

    .line 1006
    return-void
.end method

.method public setHoverResourceId(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 342
    iput p1, p0, Lcom/sec/android/glview/TwGLContext;->mHoverResId:I

    .line 343
    return-void
.end method

.method public setScrollBarAutoHide(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 925
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLContext;->mScrollBarAutoHide:Z

    .line 926
    return-void
.end method
