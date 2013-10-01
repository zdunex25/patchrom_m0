.class Lcom/android/gallery3d/app/AlbumPage$5;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$5;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
