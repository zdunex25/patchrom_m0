.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterRS.java"


# static fields
.field protected static mInPixelsAllocation:Landroid/renderscript/Allocation;

.field protected static mOutPixelsAllocation:Landroid/renderscript/Allocation;

.field private static mRS:Landroid/renderscript/RenderScript;

.field private static mResources:Landroid/content/res/Resources;


# instance fields
.field private final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mRS:Landroid/renderscript/RenderScript;

    .line 31
    sput-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 26
    const-string v0, "ImageFilterRS"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public static getRenderScriptContext()Landroid/renderscript/RenderScript;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mRS:Landroid/renderscript/RenderScript;

    return-object v0
.end method

.method public static setRenderScriptContext(Landroid/app/Activity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mRS:Landroid/renderscript/RenderScript;

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mResources:Landroid/content/res/Resources;

    .line 76
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-object p1

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->prepare(Landroid/graphics/Bitmap;)V

    .line 58
    sget-object v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->createFilter(Landroid/content/res/Resources;FZ)V

    .line 59
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->runFilter()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->update(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/renderscript/RSIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Landroid/renderscript/RSIllegalArgumentException;
    const-string v1, "ImageFilterRS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    .end local v0           #e:Landroid/renderscript/RSIllegalArgumentException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, e:Landroid/renderscript/RSRuntimeException;
    const-string v1, "ImageFilterRS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RS runtime exception ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createFilter(Landroid/content/res/Resources;FZ)V
    .locals 0
    .parameter "res"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 42
    return-void
.end method

.method public prepare(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 34
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mRS:Landroid/renderscript/RenderScript;

    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mInPixelsAllocation:Landroid/renderscript/Allocation;

    .line 37
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mRS:Landroid/renderscript/RenderScript;

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mInPixelsAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mOutPixelsAllocation:Landroid/renderscript/Allocation;

    .line 38
    return-void
.end method

.method public runFilter()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public update(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 48
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mOutPixelsAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 49
    return-void
.end method
