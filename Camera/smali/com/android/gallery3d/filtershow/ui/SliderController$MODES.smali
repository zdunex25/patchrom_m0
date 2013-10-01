.class final enum Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;
.super Ljava/lang/Enum;
.source "SliderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/ui/SliderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MODES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

.field public static final enum DOWN:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

.field public static final enum MOVE:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

.field public static final enum NONE:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

.field public static final enum UP:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->NONE:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    new-instance v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->DOWN:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    new-instance v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    const-string v1, "UP"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->UP:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    new-instance v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    const-string v1, "MOVE"

    invoke-direct {v0, v1, v5}, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->MOVE:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    sget-object v1, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->NONE:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->DOWN:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->UP:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->MOVE:Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->$VALUES:[Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;
    .locals 1
    .parameter

    .prologue
    .line 45
    const-class v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->$VALUES:[Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    invoke-virtual {v0}, [Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/filtershow/ui/SliderController$MODES;

    return-object v0
.end method
