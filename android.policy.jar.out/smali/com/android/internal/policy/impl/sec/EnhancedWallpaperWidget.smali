.class public Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;
.super Ljava/lang/Object;
.source "EnhancedWallpaperWidget.java"


# static fields
.field private static lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

.field private static rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

.field private static sInstance:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 9
    sput-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 11
    sput-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->sInstance:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sput-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 15
    sput-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->sInstance:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->sInstance:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    .line 22
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->sInstance:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    return-object v0
.end method


# virtual methods
.method public getLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getRippleLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public setLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .parameter "bitmapDrawable"

    .prologue
    .line 26
    sput-object p1, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 27
    return-void
.end method

.method public setRippleLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .parameter "bitmapDrawable"

    .prologue
    .line 34
    sput-object p1, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 35
    return-void
.end method
