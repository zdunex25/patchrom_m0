.class Lcom/android/gallery3d/exif/ExifParser$ImageEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEvent"
.end annotation


# instance fields
.field stripIndex:I

.field type:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;->stripIndex:I

    .line 720
    iput p1, p0, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;->type:I

    .line 721
    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .parameter "type"
    .parameter "stripIndex"

    .prologue
    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput p1, p0, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;->type:I

    .line 724
    iput p2, p0, Lcom/android/gallery3d/exif/ExifParser$ImageEvent;->stripIndex:I

    .line 725
    return-void
.end method
