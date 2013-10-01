.class public Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;
.super Ljava/lang/Object;
.source "ReverseGeocoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/ReverseGeocoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetLatLong"
.end annotation


# instance fields
.field public mMaxLatLatitude:D

.field public mMaxLatLongitude:D

.field public mMaxLonLatitude:D

.field public mMaxLonLongitude:D

.field public mMinLatLatitude:D

.field public mMinLatLongitude:D

.field public mMinLonLatitude:D

.field public mMinLonLongitude:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide v0, 0x4056800000000000L

    iput-wide v0, p0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    .line 62
    const-wide v0, -0x3fa9800000000000L

    iput-wide v0, p0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    .line 66
    const-wide v0, 0x4066800000000000L

    iput-wide v0, p0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    .line 69
    const-wide v0, -0x3f99800000000000L

    iput-wide v0, p0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    return-void
.end method
