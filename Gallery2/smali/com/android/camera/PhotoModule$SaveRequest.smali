.class Lcom/android/camera/PhotoModule$SaveRequest;
.super Ljava/lang/Object;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveRequest"
.end annotation


# instance fields
.field data:[B

.field height:I

.field loc:Landroid/location/Location;

.field orientation:I

.field title:Ljava/lang/String;

.field uri:Landroid/net/Uri;

.field width:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/android/camera/PhotoModule$SaveRequest;-><init>()V

    return-void
.end method
