.class public Lcom/android/gallery3d/filtershow/presets/ImagePreset;
.super Ljava/lang/Object;
.source "ImagePreset.java"


# instance fields
.field private mDoApplyFilters:Z

.field private mDoApplyGeometry:Z

.field private mEndPoint:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field protected mFilters:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/filters/ImageFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

.field private mHistoryName:Ljava/lang/String;

.field private mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

.field private mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field protected mIsFxPreset:Z

.field private mIsHighQuality:Z

.field protected mName:Ljava/lang/String;

.field private mScaleFactor:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mEndPoint:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 35
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 36
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    .line 37
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    .line 38
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    .line 41
    const-string v0, "Original"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 42
    const-string v0, "Original"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 43
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 45
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    .line 46
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    .line 48
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 55
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setup()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 7
    .parameter "source"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mEndPoint:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 35
    iput-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 36
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    .line 37
    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    .line 38
    iput-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 40
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    .line 41
    const-string v3, "Original"

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 42
    const-string v3, "Original"

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 43
    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 45
    iput-boolean v6, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    .line 46
    iput-boolean v6, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    .line 48
    new-instance v3, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 72
    :try_start_0
    iget-object v3, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    if-eqz v3, :cond_0

    .line 73
    iget-object v3, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 75
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 76
    iget-object v3, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v1

    .line 77
    .local v1, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v1, p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->add(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v1           #filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .end local v2           #i:I
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const-string v3, "ImagePreset"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception trying to clone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v0           #e:Ljava/lang/CloneNotSupportedException;
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->isFx()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 86
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 88
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    iget-object v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->set(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "historyName"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mEndPoint:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 35
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 36
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    .line 37
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    .line 38
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    .line 41
    const-string v0, "Original"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 42
    const-string v0, "Original"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 43
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 45
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    .line 46
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    .line 48
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setup()V

    .line 61
    return-void
.end method

.method private setBorder(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 141
    return-void
.end method


# virtual methods
.method public add(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V
    .locals 6
    .parameter "filter"

    .prologue
    const/4 v5, 0x2

    .line 220
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 221
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setBorder(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 248
    :cond_0
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 249
    return-void

    .line 223
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v3

    if-ne v3, v5, :cond_5

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, found:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 226
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v2

    .line 227
    .local v2, type:B
    if-eqz v0, :cond_3

    .line 228
    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    .line 229
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 225
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 233
    :cond_3
    if-ne v2, v5, :cond_2

    .line 234
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 235
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 236
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x1

    goto :goto_2

    .line 240
    .end local v2           #type:B
    :cond_4
    if-nez v0, :cond_0

    .line 241
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    .end local v0           #found:Z
    .end local v1           #i:I
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "original"

    .prologue
    .line 282
    move-object v0, p1

    .line 284
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    iget v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 288
    :cond_0
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    if-eqz v3, :cond_1

    .line 289
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 290
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 291
    .local v1, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    iget v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    .end local v1           #filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .end local v2           #i:I
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v3, :cond_2

    .line 296
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    iget v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mEndPoint:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v3, :cond_3

    .line 300
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mEndPoint:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateFilteredImage(Landroid/graphics/Bitmap;)V

    .line 303
    :cond_3
    return-object v0
.end method

.method public fillImageStateAdapter(Lcom/android/gallery3d/filtershow/ImageStateAdapter;)V
    .locals 1
    .parameter "imageStateAdapter"

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/ImageStateAdapter;->clear()V

    .line 311
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/ImageStateAdapter;->addAll(Ljava/util/Collection;)V

    .line 312
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/ImageStateAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getFilter(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 3
    .parameter "name"

    .prologue
    .line 263
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 265
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    .end local v0           #filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :goto_1
    return-object v0

    .line 263
    .restart local v0       #filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v0           #filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    return-object v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    return v0
.end method

.method public hasModifications()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->isNil()Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v2

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->hasModifications()Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 107
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 108
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->isNil()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    .end local v0           #filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public historyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    return-object v0
.end method

.method public isFx()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    return v0
.end method

.method public isPanoramaSafe()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->isNil()Z

    move-result v3

    if-nez v3, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v2

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->hasModifications()Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 123
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->isNil()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    :cond_3
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->isNil()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 132
    .end local v0           #filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public same(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z
    .locals 6
    .parameter "preset"

    .prologue
    const/4 v3, 0x0

    .line 169
    iget-object v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v3

    .line 172
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    iget-boolean v5, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-ne v4, v5, :cond_0

    .line 180
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    iget-object v5, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    :cond_2
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    iget-object v5, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    if-ne v4, v5, :cond_0

    .line 188
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    iget-object v5, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageBorder:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->same(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    :cond_4
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    iget-boolean v5, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    if-eq v4, v5, :cond_5

    .line 193
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 198
    :cond_5
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    if-eqz v4, :cond_6

    .line 199
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 200
    iget-object v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 201
    .local v0, a:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 202
    .local v1, b:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->same(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    .end local v0           #a:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .end local v1           #b:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .end local v2           #i:I
    :cond_6
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setDoApplyFilters(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    .line 97
    return-void
.end method

.method public setDoApplyGeometry(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    .line 93
    return-void
.end method

.method public setEndpoint(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mEndPoint:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 278
    return-void
.end method

.method public setGeometry(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->set(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 137
    return-void
.end method

.method public setHistoryName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V
    .locals 0
    .parameter "mImageLoader"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 166
    return-void
.end method

.method public setIsFx(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 149
    return-void
.end method

.method public setIsHighQuality(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    .line 325
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 328
    iput p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mScaleFactor:F

    .line 329
    return-void
.end method

.method public setup()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method
