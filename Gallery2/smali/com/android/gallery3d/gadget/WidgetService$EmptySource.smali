.class Lcom/android/gallery3d/gadget/WidgetService$EmptySource;
.super Ljava/lang/Object;
.source "WidgetService.java"

# interfaces
.implements Lcom/android/gallery3d/gadget/WidgetSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/gadget/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptySource"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/gadget/WidgetService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/gallery3d/gadget/WidgetService$EmptySource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public getContentUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "index"

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "index"

    .prologue
    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reload()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public setContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 73
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
