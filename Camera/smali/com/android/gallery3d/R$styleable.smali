.class public final Lcom/android/gallery3d/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraPreference:[I

.field public static final CenteredLinearLayout:[I

.field public static final IconIndicator:[I

.field public static final IconListPreference:[I

.field public static final ImageButtonTitle:[I

.field public static final ListPreference:[I

.field public static final Theme_GalleryBase:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 2884
    new-array v0, v4, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/R$styleable;->CameraPreference:[I

    .line 2911
    new-array v0, v4, [I

    const v1, 0x7f01000c

    aput v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/R$styleable;->CenteredLinearLayout:[I

    .line 2942
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/R$styleable;->IconIndicator:[I

    .line 2981
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/gallery3d/R$styleable;->IconListPreference:[I

    .line 3038
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/gallery3d/R$styleable;->ImageButtonTitle:[I

    .line 3069
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/gallery3d/R$styleable;->ListPreference:[I

    .line 3129
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/gallery3d/R$styleable;->Theme_GalleryBase:[I

    return-void

    .line 2942
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data

    .line 2981
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data

    .line 3038
    :array_2
    .array-data 0x4
        0x98t 0x0t 0x1t 0x1t
        0x4ft 0x1t 0x1t 0x1t
    .end array-data

    .line 3069
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
    .end array-data

    .line 3129
    :array_4
    .array-data 0x4
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
