.class Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/GalleryActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClusterAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/GalleryActionBar;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/GalleryActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;->this$0:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/app/GalleryActionBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActionBar;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/android/gallery3d/app/GalleryActionBar;->access$100()[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 119
    invoke-static {}, Lcom/android/gallery3d/app/GalleryActionBar;->access$100()[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 124
    invoke-static {}, Lcom/android/gallery3d/app/GalleryActionBar;->access$100()[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    move-result-object v0

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 129
    if-nez p2, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar$ClusterAdapter;->this$0:Lcom/android/gallery3d/app/GalleryActionBar;

    #getter for: Lcom/android/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->access$200(Lcom/android/gallery3d/app/GalleryActionBar;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f04

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 133
    check-cast v0, Landroid/widget/TextView;

    .line 134
    .local v0, view:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/gallery3d/app/GalleryActionBar;->access$100()[Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;

    move-result-object v1

    aget-object v1, v1, p1

    iget v1, v1, Lcom/android/gallery3d/app/GalleryActionBar$ActionItem;->spinnerTitle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    return-object p2
.end method
