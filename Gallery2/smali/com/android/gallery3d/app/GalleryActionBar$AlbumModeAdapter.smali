.class Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/GalleryActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumModeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/GalleryActionBar;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/GalleryActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;->this$0:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/GalleryActionBar;Lcom/android/gallery3d/app/GalleryActionBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActionBar;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;->this$0:Lcom/android/gallery3d/app/GalleryActionBar;

    #getter for: Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModes:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->access$300(Lcom/android/gallery3d/app/GalleryActionBar;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 169
    if-nez p2, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;->this$0:Lcom/android/gallery3d/app/GalleryActionBar;

    #getter for: Lcom/android/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->access$200(Lcom/android/gallery3d/app/GalleryActionBar;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f04

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 173
    check-cast v0, Landroid/widget/TextView;

    .line 174
    .local v0, view:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;->this$0:Lcom/android/gallery3d/app/GalleryActionBar;

    #getter for: Lcom/android/gallery3d/app/GalleryActionBar;->mAlbumModes:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->access$300(Lcom/android/gallery3d/app/GalleryActionBar;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 152
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 157
    if-nez p2, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;->this$0:Lcom/android/gallery3d/app/GalleryActionBar;

    #getter for: Lcom/android/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->access$200(Lcom/android/gallery3d/app/GalleryActionBar;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040001

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 161
    check-cast v0, Landroid/widget/TwoLineListItem;

    .line 162
    .local v0, view:Landroid/widget/TwoLineListItem;
    invoke-virtual {v0}, Landroid/widget/TwoLineListItem;->getText1()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;->this$0:Lcom/android/gallery3d/app/GalleryActionBar;

    #getter for: Lcom/android/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->access$400(Lcom/android/gallery3d/app/GalleryActionBar;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {v0}, Landroid/widget/TwoLineListItem;->getText2()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/GalleryActionBar$AlbumModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    return-object p2
.end method
