.class public Lcom/android/gallery3d/exif/Rational;
.super Ljava/lang/Object;
.source "Rational.java"


# instance fields
.field private final mDenominator:J

.field private final mNominator:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .parameter "nominator"
    .parameter "denominator"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/android/gallery3d/exif/Rational;->mNominator:J

    .line 26
    iput-wide p3, p0, Lcom/android/gallery3d/exif/Rational;->mDenominator:J

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 39
    instance-of v2, p1, Lcom/android/gallery3d/exif/Rational;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 40
    check-cast v0, Lcom/android/gallery3d/exif/Rational;

    .line 41
    .local v0, data:Lcom/android/gallery3d/exif/Rational;
    iget-wide v2, p0, Lcom/android/gallery3d/exif/Rational;->mNominator:J

    iget-wide v4, v0, Lcom/android/gallery3d/exif/Rational;->mNominator:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/gallery3d/exif/Rational;->mDenominator:J

    iget-wide v4, v0, Lcom/android/gallery3d/exif/Rational;->mDenominator:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 43
    .end local v0           #data:Lcom/android/gallery3d/exif/Rational;
    :cond_0
    return v1
.end method

.method public getDenominator()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/android/gallery3d/exif/Rational;->mDenominator:J

    return-wide v0
.end method

.method public getNominator()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/android/gallery3d/exif/Rational;->mNominator:J

    return-wide v0
.end method
