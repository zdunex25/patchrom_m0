.class Lcom/android/camera/CameraHolder$OpenReleaseState;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenReleaseState"
.end annotation


# instance fields
.field device:Ljava/lang/String;

.field id:I

.field stack:[Ljava/lang/String;

.field time:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraHolder$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/camera/CameraHolder$OpenReleaseState;-><init>()V

    return-void
.end method
