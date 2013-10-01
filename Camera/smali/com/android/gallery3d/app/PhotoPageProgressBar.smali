.class public Lcom/android/gallery3d/app/PhotoPageProgressBar;
.super Ljava/lang/Object;
.source "PhotoPageProgressBar.java"


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mProgress:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 3
    .parameter "context"
    .parameter "parentLayout"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 34
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPageProgressBar;->mContainer:Landroid/view/ViewGroup;

    .line 36
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPageProgressBar;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 37
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPageProgressBar;->mContainer:Landroid/view/ViewGroup;

    const v2, 0x7f100094

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPageProgressBar;->mProgress:Landroid/view/View;

    .line 38
    return-void
.end method


# virtual methods
.method public hideProgress()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageProgressBar;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 49
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .parameter "progressPercent"

    .prologue
    .line 41
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPageProgressBar;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 42
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPageProgressBar;->mProgress:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 43
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPageProgressBar;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPageProgressBar;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method
