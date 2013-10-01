.class public Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;
.super Ljava/lang/Object;
.source "StateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/anim/StateTransitionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final INCOMING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

.field public static final OUTGOING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

.field public static final PHOTO_INCOMING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;


# instance fields
.field public backgroundAlphaFrom:F

.field public backgroundAlphaTo:F

.field public backgroundScaleFrom:F

.field public backgroundScaleTo:F

.field public contentAlphaFrom:F

.field public contentAlphaTo:F

.field public contentScaleFrom:F

.field public contentScaleTo:F

.field public duration:I

.field public interpolator:Landroid/view/animation/Interpolator;

.field public overlayAlphaFrom:F

.field public overlayAlphaTo:F

.field public overlayScaleFrom:F

.field public overlayScaleTo:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x4040

    const/high16 v3, 0x3f00

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    .line 35
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 54
    new-instance v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    .line 55
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v3, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    .line 56
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v1, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    .line 57
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    .line 58
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v1, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    .line 59
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v3, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 60
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    .line 61
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v4, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 62
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 64
    new-instance v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    invoke-direct {v0}, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;-><init>()V

    sput-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    .line 65
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    .line 66
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v1, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    .line 67
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    .line 68
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v4, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleTo:F

    .line 69
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v1, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 70
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    .line 71
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    const/high16 v1, 0x3e80

    iput v1, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 72
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    iput v2, v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 74
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    sput-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->PHOTO_INCOMING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x14a

    iput v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->duration:I

    .line 39
    iput v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaFrom:F

    .line 40
    iput v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundAlphaTo:F

    .line 41
    iput v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleFrom:F

    .line 42
    iput v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->backgroundScaleTo:F

    .line 43
    iput v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaFrom:F

    .line 44
    iput v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentAlphaTo:F

    .line 45
    iput v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleFrom:F

    .line 46
    iput v2, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->contentScaleTo:F

    .line 47
    iput v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaFrom:F

    .line 48
    iput v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayAlphaTo:F

    .line 49
    iput v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleFrom:F

    .line 50
    iput v1, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->overlayScaleTo:F

    .line 51
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->specForTransition(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    move-result-object v0

    return-object v0
.end method

.method private static specForTransition(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;
    .locals 2
    .parameter "t"

    .prologue
    .line 78
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$1;->$SwitchMap$com$android$gallery3d$anim$StateTransitionAnimation$Transition:[I

    invoke-virtual {p0}, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 80
    :pswitch_0
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    goto :goto_0

    .line 82
    :pswitch_1
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->INCOMING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    goto :goto_0

    .line 84
    :pswitch_2
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;->PHOTO_INCOMING:Lcom/android/gallery3d/anim/StateTransitionAnimation$Spec;

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
