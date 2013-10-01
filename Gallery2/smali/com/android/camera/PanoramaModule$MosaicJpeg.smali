.class Lcom/android/camera/PanoramaModule$MosaicJpeg;
.super Ljava/lang/Object;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MosaicJpeg"
.end annotation


# instance fields
.field public final data:[B

.field public final height:I

.field public final isValid:Z

.field final synthetic this$0:Lcom/android/camera/PanoramaModule;

.field public final width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/PanoramaModule;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 188
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->data:[B

    .line 190
    iput v1, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->width:I

    .line 191
    iput v1, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->height:I

    .line 192
    iput-boolean v1, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->isValid:Z

    .line 193
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/PanoramaModule;[BII)V
    .locals 1
    .parameter
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->data:[B

    .line 183
    iput p3, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->width:I

    .line 184
    iput p4, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->height:I

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->isValid:Z

    .line 186
    return-void
.end method
