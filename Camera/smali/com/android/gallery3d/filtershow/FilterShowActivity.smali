.class public Lcom/android/gallery3d/filtershow/FilterShowActivity;
.super Landroid/app/Activity;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;
    }
.end annotation


# static fields
.field private static mImageBorderSize:I


# instance fields
.field private mBorderButton:Landroid/widget/ImageButton;

.field private final mBottomPanelButtons:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mColorsButton:Landroid/widget/ImageButton;

.field private mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

.field private mFxButton:Landroid/widget/ImageButton;

.field private mGeometryButton:Landroid/widget/ImageButton;

.field private mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

.field private mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

.field private mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

.field private mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

.field private mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field private mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

.field private mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field private mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

.field private mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

.field private final mImageViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

.field private mListBorders:Landroid/view/View;

.field private mListColors:Landroid/view/View;

.field private mListFilterButtons:Landroid/view/View;

.field private mListFx:Landroid/view/View;

.field private mListGeometry:Landroid/view/View;

.field private final mListViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

.field private mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

.field private mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

.field private final mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

.field private mSavingProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mSharedOutputFile:Ljava/io/File;

.field private mSharingImage:Z

.field private mShowingHistoryPanel:Z

.field private mShowingImageStatePanel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x4

    sput v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    .line 1028
    const-string v0, "jni_filtershow_filters"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1029
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    new-instance v0, Lcom/android/gallery3d/filtershow/PanelController;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/PanelController;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    .line 104
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 105
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 106
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    .line 107
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    .line 108
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    .line 109
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    .line 110
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    .line 111
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    .line 112
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    .line 113
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    .line 115
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFx:Landroid/view/View;

    .line 116
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    .line 117
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    .line 118
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListColors:Landroid/view/View;

    .line 119
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFilterButtons:Landroid/view/View;

    .line 121
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    .line 122
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/ImageButton;

    .line 123
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    .line 124
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    .line 126
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 132
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 133
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 135
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    .line 136
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    .line 137
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    .line 140
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    .line 142
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharingImage:Z

    .line 419
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getScreenImageSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;)Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    return-object p1
.end method

.method private createOnClickResetOperationsButton()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 915
    new-instance v0, Lcom/android/gallery3d/filtershow/FilterShowActivity$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$5;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    return-object v0
.end method

.method private fillListBorders(Landroid/widget/LinearLayout;)V
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/high16 v7, -0x100

    const/4 v1, 0x0

    .line 718
    .line 719
    new-array v2, v10, [Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 720
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v0, v2, v1

    .line 722
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02003b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 723
    const/4 v3, 0x2

    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    invoke-direct {v4, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v4, v2, v9

    .line 724
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f02003d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 725
    const/4 v4, 0x3

    new-instance v5, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    invoke-direct {v5, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v5, v2, v3

    .line 726
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02003f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 727
    const/4 v3, 0x4

    new-instance v5, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    invoke-direct {v5, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v5, v2, v4

    .line 728
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f020042

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 729
    const/4 v4, 0x5

    new-instance v5, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    invoke-direct {v5, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v5, v2, v3

    .line 730
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020043

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 731
    const/4 v3, 0x6

    new-instance v5, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    invoke-direct {v5, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v5, v2, v4

    .line 732
    const/4 v0, 0x7

    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    sget v5, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    invoke-direct {v4, v7, v5, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v4, v2, v3

    .line 733
    const/16 v3, 0x8

    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    sget v5, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    sget v6, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    invoke-direct {v4, v7, v5, v6}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v4, v2, v0

    .line 735
    const/16 v0, 0x9

    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    sget v5, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    invoke-direct {v4, v8, v5, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v4, v2, v3

    .line 736
    const/16 v3, 0xa

    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    sget v5, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    sget v6, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    invoke-direct {v4, v8, v5, v6}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v4, v2, v0

    .line 738
    const/16 v0, 0xff

    const/16 v4, 0xed

    const/16 v5, 0xed

    const/16 v6, 0xe3

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 739
    const/16 v4, 0xb

    new-instance v5, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    sget v6, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    invoke-direct {v5, v0, v6, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v5, v2, v3

    .line 740
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;

    sget v5, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    sget v6, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorderSize:I

    invoke-direct {v3, v0, v5, v6}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;-><init>(III)V

    aput-object v3, v2, v4

    move v0, v1

    .line 744
    :goto_0
    if-ge v0, v10, :cond_1

    .line 745
    new-instance v3, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;-><init>(Landroid/content/Context;)V

    .line 746
    if-nez v0, :cond_0

    .line 747
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 751
    :goto_1
    aget-object v4, v2, v0

    const v5, 0x7f0a012d

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 752
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 753
    invoke-virtual {v3, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 754
    invoke-virtual {v3, v9}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->setBorder(Z)V

    .line 755
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 756
    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->setShowTitle(Z)V

    .line 757
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 744
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->setNulfilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;)V

    goto :goto_1

    .line 760
    :cond_1
    return-void
.end method

.method private fillListImages(Landroid/widget/LinearLayout;)V
    .locals 12
    .parameter

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x0

    .line 652
    const/16 v0, 0x12

    new-array v4, v0, [Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    .line 655
    new-array v5, v2, [I

    fill-array-data v5, :array_0

    .line 667
    new-array v6, v2, [I

    fill-array-data v6, :array_1

    .line 679
    new-instance v7, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const v0, 0x7f0a0138

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v7, v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 681
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 683
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 684
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 686
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    new-instance v2, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    const/4 v3, 0x0

    const v8, 0x7f0a0158

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v3, v8}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 688
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 689
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 690
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 691
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 693
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 694
    iput-boolean v1, v8, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    move v0, v1

    move v2, v1

    .line 696
    :goto_0
    array-length v3, v5

    if-ge v0, v3, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget v9, v5, v0

    invoke-static {v3, v9, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 698
    add-int/lit8 v3, v2, 0x1

    new-instance v10, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    aget v11, v6, v0

    invoke-virtual {p0, v11}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    aput-object v10, v4, v2

    .line 696
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    .line 701
    :cond_0
    :goto_1
    if-ge v1, v2, :cond_1

    .line 702
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 703
    aget-object v3, v4, v1

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 704
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 705
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setNulfilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;)V

    .line 706
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 707
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 701
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 713
    return-void

    .line 655
    :array_0
    .array-data 0x4
        0x5ft 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
    .end array-data

    .line 667
    :array_1
    .array-data 0x4
        0xf5t 0x1t 0xat 0x7ft
        0xf0t 0x1t 0xat 0x7ft
        0xf4t 0x1t 0xat 0x7ft
        0xf2t 0x1t 0xat 0x7ft
        0xf1t 0x1t 0xat 0x7ft
        0xf7t 0x1t 0xat 0x7ft
        0xf3t 0x1t 0xat 0x7ft
        0xf8t 0x1t 0xat 0x7ft
        0xf6t 0x1t 0xat 0x7ft
    .end array-data
.end method

.method private getDefaultShareIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 555
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 557
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 558
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    .line 560
    sget-object v1, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 562
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 563
    return-object v0
.end method

.method private getScreenImageSize()I
    .locals 6

    .prologue
    .line 486
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 487
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 488
    .local v0, display:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 489
    .local v3, size:Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 490
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 491
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 492
    .local v2, msize:I
    mul-int/lit16 v4, v2, 0x85

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v4, v5

    return v4
.end method

.method private hideSavingProgress()V
    .locals 2

    .prologue
    .line 516
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 518
    .local v0, progress:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 521
    .end local v0           #progress:Landroid/app/ProgressDialog;
    :cond_0
    return-void
.end method

.method private showSavingProgress(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 497
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 499
    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 513
    :goto_0
    return-void

    .line 506
    :cond_0
    if-nez p1, :cond_1

    .line 507
    const v0, 0x7f0a0199

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    :goto_1
    const-string v1, ""

    invoke-static {p0, v1, v0, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 512
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 509
    :cond_1
    const v0, 0x7f0a019a

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private startLoadBitmap(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 407
    const v3, 0x7f100030

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 408
    .local v0, filters:Landroid/view/View;
    const v3, 0x7f10002f

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 409
    .local v1, loading:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 410
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 411
    const v3, 0x7f100043

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 412
    .local v2, tinyPlanetView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 413
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 415
    :cond_0
    new-instance v3, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    invoke-direct {v3, p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    .line 416
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/Uri;

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 417
    return-void
.end method

.method private toggleImageStatePanel()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 828
    const v0, 0x7f100024

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 829
    const v1, 0x7f100022

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 831
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-eqz v2, :cond_0

    .line 832
    const v2, 0x7f100053

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 833
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 836
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->translateMainPanel(Landroid/view/View;)I

    move-result v2

    .line 837
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    if-nez v3, :cond_1

    .line 838
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 839
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/gallery3d/filtershow/FilterShowActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$3;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 855
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateOptionsMenu()V

    .line 856
    return-void

    .line 850
    :cond_1
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 851
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 852
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private translateMainPanel(Landroid/view/View;)I
    .locals 4
    .parameter

    .prologue
    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 469
    const v0, 0x7f100021

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 470
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getDisplayedImageBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 471
    if-nez v0, :cond_0

    move v0, v1

    .line 474
    :cond_0
    const v2, 0x7f100030

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 475
    if-ge v0, v2, :cond_1

    move v0, v2

    .line 478
    :cond_1
    sub-int v0, v1, v0

    sub-int/2addr v0, v3

    .line 479
    if-gez v0, :cond_2

    .line 480
    neg-int v0, v3

    .line 482
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cannotLoadImage()V
    .locals 2

    .prologue
    .line 932
    const v0, 0x7f0a012a

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 933
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 934
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 935
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->finish()V

    .line 936
    return-void
.end method

.method public completeSaveImage(Landroid/net/Uri;)V
    .locals 4
    .parameter

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharingImage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 526
    sget-object v0, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 528
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 529
    const-string v2, "prepare"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 530
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 532
    :cond_0
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setResult(ILandroid/content/Intent;)V

    .line 533
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->hideSavingProgress()V

    .line 534
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->finish()V

    .line 535
    return-void
.end method

.method public disableFilterButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 805
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 806
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 807
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 808
    const v2, 0x3ecccccd

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    .line 810
    :cond_0
    return-void
.end method

.method public enableFilterButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 813
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 814
    .local v0, b:Landroid/widget/ImageButton;
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 815
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 816
    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0

    .line 818
    .end local v0           #b:Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public getPixelsFromDip(F)F
    .locals 3
    .parameter "value"

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 942
    .local v0, r:Landroid/content/res/Resources;
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public invalidateViews()V
    .locals 3

    .prologue
    .line 773
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 774
    .local v1, views:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    .line 775
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImage()V

    goto :goto_0

    .line 777
    .end local v1           #views:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    :cond_0
    return-void
.end method

.method public isShowingHistoryPanel()Z
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1005
    const-string v0, "FilterShowActivity"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1007
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1008
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1009
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 1012
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/PanelController;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->saveImage()V

    .line 929
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 861
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 862
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->toggleHistoryPanel()V

    .line 865
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 31
    .parameter "savedInstanceState"

    .prologue
    .line 153
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-static/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->setRenderScriptContext(Landroid/app/Activity;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setDefaultBackgroundColor(I)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setDefaultBackgroundColor(I)V

    .line 160
    const/high16 v2, 0x4380

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->setZoomedSize(F)V

    .line 161
    const/high16 v2, 0x4160

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setTextSize(I)V

    .line 162
    const/high16 v2, 0x4080

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setTrianglePadding(I)V

    .line 163
    const/high16 v2, 0x4120

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/FramedTextButton;->setTriangleSize(I)V

    .line 164
    const/high16 v2, 0x4140

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setTextSize(I)V

    .line 165
    const/high16 v2, 0x4120

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setTextPadding(I)V

    .line 166
    const/high16 v2, 0x4080

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalTextMargin(I)V

    .line 167
    const/high16 v2, 0x4190

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalTextSize(I)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a012b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalText(Ljava/lang/String;)V

    .line 169
    const/high16 v2, 0x4140

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->setTextSize(I)V

    .line 170
    const/high16 v2, 0x4120

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->setTextPadding(I)V

    .line 171
    const/high16 v2, 0x4040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setMargin(I)V

    .line 172
    const/high16 v2, 0x4080

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setTextMargin(I)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 174
    .local v11, curveHandle:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v12, v2

    .line 175
    .local v12, curveHandleSize:I
    invoke-static {v11, v12}, Lcom/android/gallery3d/filtershow/ui/Spline;->setCurveHandle(Landroid/graphics/drawable/Drawable;I)V

    .line 176
    const/high16 v2, 0x4040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/Spline;->setCurveWidth(I)V

    .line 178
    const v2, 0x7f040012

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->setContentView(I)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    .line 180
    .local v9, actionBar:Landroid/app/ActionBar;
    const/16 v2, 0x10

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 181
    const v2, 0x7f040011

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 183
    invoke-virtual {v9}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/filtershow/FilterShowActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$1;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    new-instance v2, Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 192
    const v2, 0x7f100037

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 193
    .local v21, listFilters:Landroid/widget/LinearLayout;
    const v2, 0x7f100039

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 194
    .local v19, listBorders:Landroid/widget/LinearLayout;
    const v2, 0x7f100042

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 196
    .local v20, listColors:Landroid/widget/LinearLayout;
    const v2, 0x7f100025

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 197
    const v2, 0x7f10002a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    .line 198
    const v2, 0x7f10002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    .line 199
    const v2, 0x7f100026

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    .line 200
    const v2, 0x7f10002c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    .line 201
    const v2, 0x7f100027

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    .line 202
    const v2, 0x7f100028

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    .line 203
    const v2, 0x7f100029

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    .line 204
    const v2, 0x7f10002d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    const/high16 v3, 0x4190

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectTextSize(I)V

    .line 207
    const/high16 v2, 0x41c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setTouchTolerance(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 218
    const v2, 0x7f100036

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFx:Landroid/view/View;

    .line 219
    const v2, 0x7f100038

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    .line 220
    const v2, 0x7f10003a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    .line 221
    const v2, 0x7f100032

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFilterButtons:Landroid/view/View;

    .line 222
    const v2, 0x7f100041

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListColors:Landroid/view/View;

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFx:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFilterButtons:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListColors:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 229
    const v2, 0x7f10004f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    .line 230
    const v2, 0x7f100050

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/ImageButton;

    .line 231
    const v2, 0x7f100051

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    .line 232
    const v2, 0x7f100052

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageBorders:Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageBorder;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageStraighten:Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageRotate:Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageFlip:Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageFlip;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/PanelController;->setActivity(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100025

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f10002a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f10002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100026

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100027

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100028

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100029

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f10002c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f10002d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListFx:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    const v4, 0x7f10003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    const v4, 0x7f10003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    const v4, 0x7f10003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/ImageButton;

    const v4, 0x7f10003f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mListColors:Landroid/view/View;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 280
    const/16 v2, 0xa

    new-array v0, v2, [I

    move-object/from16 v27, v0

    fill-array-data v27, :array_0

    .line 292
    .local v27, recastIDs:[I
    const/16 v2, 0xa

    new-array v15, v2, [Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVibrance;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterContrast;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;-><init>()V

    aput-object v3, v15, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;-><init>()V

    aput-object v3, v15, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;-><init>()V

    aput-object v3, v15, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;-><init>()V

    aput-object v3, v15, v2

    .line 305
    .local v15, filters:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    array-length v2, v15

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    .line 306
    new-instance v14, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 307
    .local v14, fView:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    aget v2, v27, v16

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 308
    .local v30, v:Landroid/view/View;
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v26

    .line 309
    .local v26, pos:I
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 311
    aget-object v2, v15, v16

    aget-object v3, v15, v16

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getPreviewParameter()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setParameter(I)V

    .line 312
    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;

    if-eqz v2, :cond_0

    .line 313
    aget-object v2, v15, v16

    check-cast v30, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;

    .end local v30           #v:Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Lcom/android/gallery3d/filtershow/ui/ImageButtonTitle;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 314
    :cond_0
    aget-object v2, v15, v16

    invoke-virtual {v14, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 315
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v14, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 317
    aget v2, v27, v16

    invoke-virtual {v14, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setId(I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v14}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 319
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 305
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 322
    .end local v14           #fView:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
    .end local v26           #pos:I
    :cond_1
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v24, v0

    fill-array-data v24, :array_1

    .line 326
    .local v24, overlayIDs:[I
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_2

    .line 330
    .local v23, overlayBitmaps:[I
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v25, v0

    fill-array-data v25, :array_3

    .line 335
    .local v25, overlayNames:[I
    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 336
    new-instance v14, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;-><init>(Landroid/content/Context;)V

    .line 337
    .local v14, fView:Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;
    aget v2, v24, v16

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 338
    .restart local v30       #v:Landroid/view/View;
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v26

    .line 339
    .restart local v26       #pos:I
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 340
    aget v29, v25, v16

    .line 341
    .local v29, sid:I
    new-instance v13, Lcom/android/gallery3d/filtershow/FilterShowActivity$2;

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v13, v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$2;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;I)V

    .line 346
    .local v13, efilter:Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;
    const/16 v2, -0x12c

    invoke-virtual {v13, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;->setParameter(I)V

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, v23, v16

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 350
    .local v10, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v14, v10}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->setIcon(Landroid/graphics/Bitmap;)V

    .line 351
    invoke-virtual {v14, v13}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->setImageFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 352
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->setController(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v14, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 354
    aget v2, v24, v16

    invoke-virtual {v14, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;->setId(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mColorsButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3, v14}, Lcom/android/gallery3d/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 356
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 335
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 359
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #efilter:Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;
    .end local v14           #fView:Lcom/android/gallery3d/filtershow/imageshow/ImageWithIcon;
    .end local v26           #pos:I
    .end local v29           #sid:I
    .end local v30           #v:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100035

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addView(Landroid/view/View;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100034

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addView(Landroid/view/View;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100033

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->addView(Landroid/view/View;)V

    .line 362
    const v2, 0x7f100055

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->createOnClickResetOperationsButton()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    const v2, 0x7f100054

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ListView;

    .line 366
    .local v22, operationsList:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 367
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 368
    const v2, 0x7f100023

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ListView;

    .line 369
    .local v17, imageStateList:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImageStateAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->setAdapter(Lcom/android/gallery3d/filtershow/HistoryAdapter;)V

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->fillListImages(Landroid/widget/LinearLayout;)V

    .line 373
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->fillListBorders(Landroid/widget/LinearLayout;)V

    .line 375
    const v2, 0x7f10002e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/SeekBar;

    .line 376
    .local v28, seekBar:Landroid/widget/SeekBar;
    const/16 v2, 0x258

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageZoom:Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageZoom;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageTinyPlanet:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100031

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->setRowPanel(Landroid/view/View;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100032

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v3, 0x7f100035

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v3, 0x7f100033

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v3, 0x7f100034

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/filtershow/PanelController;->setUtilityPanel(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->setMasterImage(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mFxButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->setCurrentPanel(Landroid/view/View;)V

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 388
    .local v18, intent:Landroid/content/Intent;
    const-string v2, "launch-fullscreen"

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 392
    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 393
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 398
    :goto_2
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, action:Ljava/lang/String;
    const-string v2, "com.android.camera.action.EDITOR_CROP"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f10003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    .line 404
    :cond_4
    :goto_3
    return-void

    .line 395
    .end local v8           #action:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->pickImage()V

    goto :goto_2

    .line 401
    .restart local v8       #action:Ljava/lang/String;
    :cond_6
    const-string v2, "com.android.camera.action.TINY_PLANET"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    const v3, 0x7f100043

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    goto :goto_3

    .line 280
    nop

    :array_0
    .array-data 0x4
        0x43t 0x0t 0x10t 0x7ft
        0x46t 0x0t 0x10t 0x7ft
        0x49t 0x0t 0x10t 0x7ft
        0x47t 0x0t 0x10t 0x7ft
        0x4dt 0x0t 0x10t 0x7ft
        0x4et 0x0t 0x10t 0x7ft
        0x44t 0x0t 0x10t 0x7ft
        0x4ct 0x0t 0x10t 0x7ft
        0x45t 0x0t 0x10t 0x7ft
        0x48t 0x0t 0x10t 0x7ft
    .end array-data

    .line 322
    :array_1
    .array-data 0x4
        0x4at 0x0t 0x10t 0x7ft
        0x4bt 0x0t 0x10t 0x7ft
    .end array-data

    .line 326
    :array_2
    .array-data 0x4
        0x4at 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
    .end array-data

    .line 330
    :array_3
    .array-data 0x4
        0x49t 0x1t 0xat 0x7ft
        0x51t 0x1t 0xat 0x7ft
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 569
    const v0, 0x7f1000d2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 570
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-eqz v1, :cond_0

    .line 571
    const v1, 0x7f0a0132

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 575
    :goto_0
    const v0, 0x7f1000d3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 576
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    if-eqz v1, :cond_1

    .line 577
    const v1, 0x7f0a0134

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 581
    :goto_1
    const v0, 0x7f1000ce

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    check-cast v0, Landroid/widget/ShareActionProvider;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 583
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getDefaultShareIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 584
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v0, p0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 586
    const v0, 0x7f1000cf

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 587
    const v1, 0x7f1000d0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 588
    const v2, 0x7f1000d1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 589
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->setMenuItems(Landroid/view/MenuItem;Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    .line 590
    const/4 v0, 0x1

    return v0

    .line 573
    :cond_0
    const v1, 0x7f0a0131

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 579
    :cond_1
    const v1, 0x7f0a0133

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->cancel(Z)Z

    .line 464
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 465
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 991
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 992
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    .line 993
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 611
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 645
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 613
    :sswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v1

    .line 614
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->undo()I

    move-result v1

    .line 615
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 616
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const-string v2, "Undo"

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showToast(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0

    .line 621
    :sswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v1

    .line 622
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->redo()I

    move-result v1

    .line 623
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 624
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    const-string v2, "Redo"

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->showToast(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0

    .line 629
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->resetHistory()V

    goto :goto_0

    .line 633
    :sswitch_3
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->toggleImageStatePanel()V

    goto :goto_0

    .line 637
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->toggleHistoryPanel()V

    goto :goto_0

    .line 641
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->saveImage()V

    goto :goto_0

    .line 611
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_5
        0x7f1000cf -> :sswitch_0
        0x7f1000d0 -> :sswitch_1
        0x7f1000d1 -> :sswitch_2
        0x7f1000d2 -> :sswitch_4
        0x7f1000d3 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 595
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 596
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 599
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 603
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 604
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v0, p0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 607
    :cond_0
    return-void
.end method

.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 541
    sget-object v0, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 543
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 544
    const-string v2, "prepare"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 545
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 546
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharingImage:Z

    .line 549
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showSavingProgress(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->saveImage(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V

    .line 551
    return v4
.end method

.method public pickImage()V
    .locals 2

    .prologue
    .line 996
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 997
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    const v1, 0x7f0a019e

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1001
    return-void
.end method

.method resetHistory()V
    .locals 4

    .prologue
    .line 902
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->onClick(Landroid/view/View;)V

    .line 903
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mNullBorderFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->onClick(Landroid/view/View;)V

    .line 905
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v0

    .line 906
    .local v0, adapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->reset()V

    .line 907
    new-instance v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 908
    .local v1, original:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 909
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mPanelController:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/PanelController;->resetParameters()V

    .line 910
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    .line 911
    return-void
.end method

.method public saveImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1015
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->hasModifications()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1017
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    .line 1018
    .local v2, saveDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    .line 1019
    .local v1, bucketId:I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1, v4}, Lcom/android/gallery3d/data/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1020
    .local v0, albumName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showSavingProgress(Ljava/lang/String;)V

    .line 1021
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, p0, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->saveImage(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V

    .line 1025
    .end local v0           #albumName:Ljava/lang/String;
    .end local v1           #bucketId:I
    .end local v2           #saveDir:Ljava/io/File;
    :goto_0
    return-void

    .line 1023
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->finish()V

    goto :goto_0
.end method

.method public toggleHistoryPanel()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 871
    const v0, 0x7f100024

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 872
    const v1, 0x7f100053

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 874
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    if-eqz v2, :cond_0

    .line 875
    const v2, 0x7f100022

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 876
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 879
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->translateMainPanel(Landroid/view/View;)I

    move-result v2

    .line 880
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-nez v3, :cond_1

    .line 881
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 882
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;

    invoke-direct {v2, p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$4;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 898
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateOptionsMenu()V

    .line 899
    return-void

    .line 893
    :cond_1
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 894
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 895
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public useImageFilter(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;Lcom/android/gallery3d/filtershow/filters/ImageFilter;Z)V
    .locals 4
    .parameter "imageSmallFilter"
    .parameter "imageFilter"
    .parameter "setBorder"

    .prologue
    .line 968
    if-nez p2, :cond_0

    .line 986
    :goto_0
    return-void

    .line 972
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v2, :cond_1

    .line 973
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 975
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 976
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 978
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    .line 979
    .local v1, oldPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 982
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->add(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    .line 984
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 985
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0
.end method

.method public useImagePreset(Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 3
    .parameter "imageSmallFilter"
    .parameter "preset"

    .prologue
    .line 947
    if-nez p2, :cond_0

    .line 964
    :goto_0
    return-void

    .line 951
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    if-eqz v1, :cond_1

    .line 952
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 954
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    .line 955
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCurrentImageSmallFilter:Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 957
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0, p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 958
    .local v0, copy:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageShow:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 959
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->isFx()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 961
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageCurves:Lcom/android/gallery3d/filtershow/ui/ImageCurves;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->resetCurve()V

    .line 963
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0
.end method
