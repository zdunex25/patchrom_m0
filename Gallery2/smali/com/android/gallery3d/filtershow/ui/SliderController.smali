.class public Lcom/android/gallery3d/filtershow/ui/SliderController;
.super Ljava/lang/Object;
.source "SliderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;
    }
.end annotation


# static fields
.field private static mTextSize:I


# instance fields
.field private mHeight:I

.field private mListener:Lcom/android/gallery3d/filtershow/ui/SliderListener;

.field private mMode:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

.field mOriginalValue:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mToast:Ljava/lang/String;

.field private mValue:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x80

    sput v0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mTextSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mValue:I

    .line 31
    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mOriginalValue:I

    .line 33
    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mWidth:I

    .line 34
    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mHeight:I

    .line 36
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mToast:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mPaint:Landroid/graphics/Paint;

    .line 40
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mListener:Lcom/android/gallery3d/filtershow/ui/SliderListener;

    .line 42
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->NONE:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mMode:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    .line 45
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mMode:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    sget-object v1, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->NONE:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/SliderController;->mMode:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    sget-object v1, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->UP:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    if-ne v0, v1, :cond_0

    .line 53
    :cond_0
    return-void
.end method
