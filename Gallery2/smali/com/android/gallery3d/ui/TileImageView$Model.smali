.class public interface abstract Lcom/android/gallery3d/ui/TileImageView$Model;
.super Ljava/lang/Object;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# virtual methods
.method public abstract getImageHeight()I
.end method

.method public abstract getImageWidth()I
.end method

.method public abstract getLevelCount()I
.end method

.method public abstract getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
.end method

.method public abstract getTile(IIIIILcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;
.end method
