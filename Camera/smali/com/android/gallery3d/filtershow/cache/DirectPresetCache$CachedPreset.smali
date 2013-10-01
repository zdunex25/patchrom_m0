.class public Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;
.super Ljava/lang/Object;
.source "DirectPresetCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CachedPreset"
.end annotation


# instance fields
.field private mAge:J

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBusy:Z

.field private mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field final synthetic this$0:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;


# direct methods
.method protected constructor <init>(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->this$0:Lcom/android/gallery3d/filtershow/cache/DirectPresetCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;

    .line 39
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mAge:J

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mAge:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mAge:J

    return-wide p1
.end method


# virtual methods
.method public setBusy(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/cache/DirectPresetCache$CachedPreset;->mBusy:Z

    .line 45
    return-void
.end method
