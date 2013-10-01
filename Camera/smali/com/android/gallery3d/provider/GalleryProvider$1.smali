.class final Lcom/android/gallery3d/provider/GalleryProvider$1;
.super Landroid/os/AsyncTask;
.source "GalleryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/provider/GalleryProvider;->openPipeHelper(Ljava/lang/Object;Lcom/android/gallery3d/provider/GalleryProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$args:Ljava/lang/Object;

.field final synthetic val$func:Lcom/android/gallery3d/provider/GalleryProvider$PipeDataWriter;

.field final synthetic val$pipe:[Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/provider/GalleryProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/gallery3d/provider/GalleryProvider$1;->val$func:Lcom/android/gallery3d/provider/GalleryProvider$PipeDataWriter;

    iput-object p2, p0, Lcom/android/gallery3d/provider/GalleryProvider$1;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/gallery3d/provider/GalleryProvider$1;->val$args:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x1

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/provider/GalleryProvider$1;->val$func:Lcom/android/gallery3d/provider/GalleryProvider$PipeDataWriter;

    iget-object v1, p0, Lcom/android/gallery3d/provider/GalleryProvider$1;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/provider/GalleryProvider$1;->val$args:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/provider/GalleryProvider$PipeDataWriter;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    const/4 v0, 0x0

    .line 247
    iget-object v1, p0, Lcom/android/gallery3d/provider/GalleryProvider$1;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/provider/GalleryProvider$1;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v0
.end method
