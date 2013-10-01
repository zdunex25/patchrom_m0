.class public Lcom/android/gallery3d/ui/DialogDetailsView;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAdapter:Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;

.field private mDetails:Lcom/android/gallery3d/data/MediaDetails;

.field private mDialog:Landroid/app/Dialog;

.field private mIndex:I

.field private mListener:Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;

.field private final mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V
    .locals 0
    .parameter "activity"
    .parameter "source"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 58
    iput-object p2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mListener:Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/DialogDetailsView;)Lcom/android/gallery3d/data/MediaDetails;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/android/gallery3d/data/MediaDetails;

    return-object v0
.end method

.method private setDetails(Lcom/android/gallery3d/data/MediaDetails;)V
    .locals 7
    .parameter "details"

    .prologue
    const/4 v6, 0x0

    .line 86
    new-instance v2, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    invoke-direct {v2, p0, p1}, Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;Lcom/android/gallery3d/data/MediaDetails;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mAdapter:Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    .line 87
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04000c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 92
    .local v0, detailsList:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mAdapter:Lcom/android/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a01b4

    new-instance v4, Lcom/android/gallery3d/ui/DialogDetailsView$1;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/ui/DialogDetailsView$1;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    .line 104
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/android/gallery3d/ui/DialogDetailsView$2;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/DialogDetailsView$2;-><init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 112
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 70
    return-void
.end method

.method public reloadDetails()V
    .locals 3

    .prologue
    .line 74
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;->setIndex()I

    move-result v1

    .line 75
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mSource:Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 77
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    if-eqz v0, :cond_0

    .line 78
    iget v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mIndex:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/android/gallery3d/data/MediaDetails;

    if-eq v2, v0, :cond_0

    .line 79
    :cond_2
    iput v1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mIndex:I

    .line 80
    iput-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/android/gallery3d/data/MediaDetails;

    .line 81
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/DialogDetailsView;->setDetails(Lcom/android/gallery3d/data/MediaDetails;)V

    goto :goto_0
.end method

.method public setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mListener:Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;

    .line 243
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/DialogDetailsView;->reloadDetails()V

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 65
    return-void
.end method
