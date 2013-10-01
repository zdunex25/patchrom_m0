.class public interface abstract Lcom/android/gallery3d/ui/PhotoView$Model;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/TileImageView$Model;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# virtual methods
.method public abstract getCurrentIndex()I
.end method

.method public abstract getImageRotation(I)I
.end method

.method public abstract getImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V
.end method

.method public abstract getLoadingState(I)I
.end method

.method public abstract getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;
.end method

.method public abstract getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;
.end method

.method public abstract isCamera(I)Z
.end method

.method public abstract isDeletable(I)Z
.end method

.method public abstract isPanorama(I)Z
.end method

.method public abstract isStaticCamera(I)Z
.end method

.method public abstract isVideo(I)Z
.end method

.method public abstract moveTo(I)V
.end method

.method public abstract setFocusHintDirection(I)V
.end method

.method public abstract setFocusHintPath(Lcom/android/gallery3d/data/Path;)V
.end method

.method public abstract setNeedFullImage(Z)V
.end method
