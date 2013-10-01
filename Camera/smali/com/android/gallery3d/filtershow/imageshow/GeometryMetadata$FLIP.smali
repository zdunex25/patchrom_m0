.class public final enum Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
.super Ljava/lang/Enum;
.source "GeometryMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FLIP"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

.field public static final enum BOTH:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

.field public static final enum HORIZONTAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

.field public static final enum NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

.field public static final enum VERTICAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->VERTICAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->HORIZONTAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->BOTH:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    sget-object v1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->VERTICAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->HORIZONTAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->BOTH:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->$VALUES:[Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->$VALUES:[Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {v0}, [Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    return-object v0
.end method
