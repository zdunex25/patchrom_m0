.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_COARSE_LOCATION:Ljava/lang/String; = "coarseLocation"

.field public static final EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"

.field public static final FORMAT_DEGREES:I = 0x0

.field public static final FORMAT_MINUTES:I = 0x1

.field public static final FORMAT_SECONDS:I = 0x2


# instance fields
.field private mAccuracy:F

.field private mAltitude:D

.field private mBearing:F

.field private mDistance:F

.field private mElapsedRealtimeNanos:J

.field private mExtras:Landroid/os/Bundle;

.field private mHasAccuracy:Z

.field private mHasAltitude:Z

.field private mHasBearing:Z

.field private mHasSpeed:Z

.field private mInitialBearing:F

.field private mLat1:D

.field private mLat2:D

.field private mLatitude:D

.field private mLon1:D

.field private mLon2:D

.field private mLongitude:D

.field private mProvider:Ljava/lang/String;

.field private final mResults:[F

.field private mSpeed:F

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 855
    new-instance v0, Landroid/location/Location$1;

    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 6
    .parameter "l"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-wide v4, p0, Landroid/location/Location;->mTime:J

    .line 82
    iput-wide v4, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 83
    iput-wide v1, p0, Landroid/location/Location;->mLatitude:D

    .line 84
    iput-wide v1, p0, Landroid/location/Location;->mLongitude:D

    .line 85
    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 86
    iput-wide v1, p0, Landroid/location/Location;->mAltitude:D

    .line 87
    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 88
    iput v3, p0, Landroid/location/Location;->mSpeed:F

    .line 89
    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 90
    iput v3, p0, Landroid/location/Location;->mBearing:F

    .line 91
    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 92
    iput v3, p0, Landroid/location/Location;->mAccuracy:F

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 97
    iput-wide v1, p0, Landroid/location/Location;->mLat1:D

    .line 98
    iput-wide v1, p0, Landroid/location/Location;->mLon1:D

    .line 99
    iput-wide v1, p0, Landroid/location/Location;->mLat2:D

    .line 100
    iput-wide v1, p0, Landroid/location/Location;->mLon2:D

    .line 101
    iput v3, p0, Landroid/location/Location;->mDistance:F

    .line 102
    iput v3, p0, Landroid/location/Location;->mInitialBearing:F

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/location/Location;->mResults:[F

    .line 122
    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "provider"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-wide v4, p0, Landroid/location/Location;->mTime:J

    .line 82
    iput-wide v4, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 83
    iput-wide v1, p0, Landroid/location/Location;->mLatitude:D

    .line 84
    iput-wide v1, p0, Landroid/location/Location;->mLongitude:D

    .line 85
    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 86
    iput-wide v1, p0, Landroid/location/Location;->mAltitude:D

    .line 87
    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 88
    iput v3, p0, Landroid/location/Location;->mSpeed:F

    .line 89
    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 90
    iput v3, p0, Landroid/location/Location;->mBearing:F

    .line 91
    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 92
    iput v3, p0, Landroid/location/Location;->mAccuracy:F

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 97
    iput-wide v1, p0, Landroid/location/Location;->mLat1:D

    .line 98
    iput-wide v1, p0, Landroid/location/Location;->mLon1:D

    .line 99
    iput-wide v1, p0, Landroid/location/Location;->mLat2:D

    .line 100
    iput-wide v1, p0, Landroid/location/Location;->mLon2:D

    .line 101
    iput v3, p0, Landroid/location/Location;->mDistance:F

    .line 102
    iput v3, p0, Landroid/location/Location;->mInitialBearing:F

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/location/Location;->mResults:[F

    .line 115
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 116
    return-void
.end method

.method static synthetic access$002(Landroid/location/Location;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    return-wide p1
.end method

.method static synthetic access$1002(Landroid/location/Location;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/location/Location;->mHasAccuracy:Z

    return p1
.end method

.method static synthetic access$102(Landroid/location/Location;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide p1
.end method

.method static synthetic access$1102(Landroid/location/Location;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    return p1
.end method

.method static synthetic access$1202(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$202(Landroid/location/Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    return-wide p1
.end method

.method static synthetic access$302(Landroid/location/Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    return-wide p1
.end method

.method static synthetic access$402(Landroid/location/Location;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/location/Location;->mHasAltitude:Z

    return p1
.end method

.method static synthetic access$502(Landroid/location/Location;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    return-wide p1
.end method

.method static synthetic access$602(Landroid/location/Location;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/location/Location;->mHasSpeed:Z

    return p1
.end method

.method static synthetic access$702(Landroid/location/Location;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    return p1
.end method

.method static synthetic access$802(Landroid/location/Location;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/location/Location;->mHasBearing:Z

    return p1
.end method

.method static synthetic access$902(Landroid/location/Location;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Landroid/location/Location;->mBearing:F

    return p1
.end method

.method private static computeDistanceAndBearing(DDDD[F)V
    .locals 87
    .parameter "lat1"
    .parameter "lon1"
    .parameter "lat2"
    .parameter "lon2"
    .parameter "results"

    .prologue
    .line 289
    const/16 v12, 0x14

    .line 291
    .local v12, MAXITERS:I
    const-wide v75, 0x3f91df46a2529d39L

    mul-double p0, p0, v75

    .line 292
    const-wide v75, 0x3f91df46a2529d39L

    mul-double p4, p4, v75

    .line 293
    const-wide v75, 0x3f91df46a2529d39L

    mul-double p2, p2, v75

    .line 294
    const-wide v75, 0x3f91df46a2529d39L

    mul-double p6, p6, v75

    .line 296
    const-wide v17, 0x415854a640000000L

    .line 297
    .local v17, a:D
    const-wide v21, 0x41583fc4141bda51L

    .line 298
    .local v21, b:D
    sub-double v75, v17, v21

    div-double v44, v75, v17

    .line 299
    .local v44, f:D
    mul-double v75, v17, v17

    mul-double v77, v21, v21

    sub-double v75, v75, v77

    mul-double v77, v21, v21

    div-double v19, v75, v77

    .line 301
    .local v19, aSqMinusBSqOverBSq:D
    sub-double v10, p6, p2

    .line 302
    .local v10, L:D
    const-wide/16 v4, 0x0

    .line 303
    .local v4, A:D
    const-wide/high16 v75, 0x3ff0

    sub-double v75, v75, v44

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v77

    mul-double v75, v75, v77

    invoke-static/range {v75 .. v76}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    .line 304
    .local v13, U1:D
    const-wide/high16 v75, 0x3ff0

    sub-double v75, v75, v44

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v77

    mul-double v75, v75, v77

    invoke-static/range {v75 .. v76}, Ljava/lang/Math;->atan(D)D

    move-result-wide v15

    .line 306
    .local v15, U2:D
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v33

    .line 307
    .local v33, cosU1:D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v37

    .line 308
    .local v37, cosU2:D
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v63

    .line 309
    .local v63, sinU1:D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v67

    .line 310
    .local v67, sinU2:D
    mul-double v35, v33, v37

    .line 311
    .local v35, cosU1cosU2:D
    mul-double v65, v63, v67

    .line 313
    .local v65, sinU1sinU2:D
    const-wide/16 v53, 0x0

    .line 314
    .local v53, sigma:D
    const-wide/16 v41, 0x0

    .line 315
    .local v41, deltaSigma:D
    const-wide/16 v31, 0x0

    .line 316
    .local v31, cosSqAlpha:D
    const-wide/16 v23, 0x0

    .line 317
    .local v23, cos2SM:D
    const-wide/16 v29, 0x0

    .line 318
    .local v29, cosSigma:D
    const-wide/16 v59, 0x0

    .line 319
    .local v59, sinSigma:D
    const-wide/16 v27, 0x0

    .line 320
    .local v27, cosLambda:D
    const-wide/16 v57, 0x0

    .line 322
    .local v57, sinLambda:D
    move-wide/from16 v49, v10

    .line 323
    .local v49, lambda:D
    const/16 v48, 0x0

    .local v48, iter:I
    :goto_0
    move/from16 v0, v48

    if-ge v0, v12, :cond_0

    .line 324
    move-wide/from16 v51, v49

    .line 325
    .local v51, lambdaOrig:D
    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    .line 326
    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->sin(D)D

    move-result-wide v57

    .line 327
    mul-double v69, v37, v57

    .line 328
    .local v69, t1:D
    mul-double v75, v33, v67

    mul-double v77, v63, v37

    mul-double v77, v77, v27

    sub-double v71, v75, v77

    .line 329
    .local v71, t2:D
    mul-double v75, v69, v69

    mul-double v77, v71, v71

    add-double v61, v75, v77

    .line 330
    .local v61, sinSqSigma:D
    invoke-static/range {v61 .. v62}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v59

    .line 331
    mul-double v75, v35, v27

    add-double v29, v65, v75

    .line 332
    move-wide/from16 v0, v59

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v53

    .line 333
    const-wide/16 v75, 0x0

    cmpl-double v75, v59, v75

    if-nez v75, :cond_2

    const-wide/16 v55, 0x0

    .line 335
    .local v55, sinAlpha:D
    :goto_1
    const-wide/high16 v75, 0x3ff0

    mul-double v77, v55, v55

    sub-double v31, v75, v77

    .line 336
    const-wide/16 v75, 0x0

    cmpl-double v75, v31, v75

    if-nez v75, :cond_3

    const-wide/16 v23, 0x0

    .line 339
    :goto_2
    mul-double v73, v31, v19

    .line 340
    .local v73, uSquared:D
    const-wide/high16 v75, 0x3ff0

    const-wide/high16 v77, 0x40d0

    div-double v77, v73, v77

    const-wide/high16 v79, 0x40b0

    const-wide/high16 v81, -0x3f78

    const-wide/high16 v83, 0x4074

    const-wide v85, 0x4065e00000000000L

    mul-double v85, v85, v73

    sub-double v83, v83, v85

    mul-double v83, v83, v73

    add-double v81, v81, v83

    mul-double v81, v81, v73

    add-double v79, v79, v81

    mul-double v77, v77, v79

    add-double v4, v75, v77

    .line 343
    const-wide/high16 v75, 0x4090

    div-double v75, v73, v75

    const-wide/high16 v77, 0x4070

    const-wide/high16 v79, -0x3fa0

    const-wide v81, 0x4052800000000000L

    const-wide v83, 0x4047800000000000L

    mul-double v83, v83, v73

    sub-double v81, v81, v83

    mul-double v81, v81, v73

    add-double v79, v79, v81

    mul-double v79, v79, v73

    add-double v77, v77, v79

    mul-double v6, v75, v77

    .line 346
    .local v6, B:D
    const-wide/high16 v75, 0x4030

    div-double v75, v44, v75

    mul-double v75, v75, v31

    const-wide/high16 v77, 0x4010

    const-wide/high16 v79, 0x4010

    const-wide/high16 v81, 0x4008

    mul-double v81, v81, v31

    sub-double v79, v79, v81

    mul-double v79, v79, v44

    add-double v77, v77, v79

    mul-double v8, v75, v77

    .line 349
    .local v8, C:D
    mul-double v25, v23, v23

    .line 350
    .local v25, cos2SMSq:D
    mul-double v75, v6, v59

    const-wide/high16 v77, 0x4010

    div-double v77, v6, v77

    const-wide/high16 v79, -0x4010

    const-wide/high16 v81, 0x4000

    mul-double v81, v81, v25

    add-double v79, v79, v81

    mul-double v79, v79, v29

    const-wide/high16 v81, 0x4018

    div-double v81, v6, v81

    mul-double v81, v81, v23

    const-wide/high16 v83, -0x3ff8

    const-wide/high16 v85, 0x4010

    mul-double v85, v85, v59

    mul-double v85, v85, v59

    add-double v83, v83, v85

    mul-double v81, v81, v83

    const-wide/high16 v83, -0x3ff8

    const-wide/high16 v85, 0x4010

    mul-double v85, v85, v25

    add-double v83, v83, v85

    mul-double v81, v81, v83

    sub-double v79, v79, v81

    mul-double v77, v77, v79

    add-double v77, v77, v23

    mul-double v41, v75, v77

    .line 357
    const-wide/high16 v75, 0x3ff0

    sub-double v75, v75, v8

    mul-double v75, v75, v44

    mul-double v75, v75, v55

    mul-double v77, v8, v59

    mul-double v79, v8, v29

    const-wide/high16 v81, -0x4010

    const-wide/high16 v83, 0x4000

    mul-double v83, v83, v23

    mul-double v83, v83, v23

    add-double v81, v81, v83

    mul-double v79, v79, v81

    add-double v79, v79, v23

    mul-double v77, v77, v79

    add-double v77, v77, v53

    mul-double v75, v75, v77

    add-double v49, v10, v75

    .line 363
    sub-double v75, v49, v51

    div-double v39, v75, v49

    .line 364
    .local v39, delta:D
    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->abs(D)D

    move-result-wide v75

    const-wide v77, 0x3d719799812dea11L

    cmpg-double v75, v75, v77

    if-gez v75, :cond_4

    .line 369
    .end local v6           #B:D
    .end local v8           #C:D
    .end local v25           #cos2SMSq:D
    .end local v39           #delta:D
    .end local v51           #lambdaOrig:D
    .end local v55           #sinAlpha:D
    .end local v61           #sinSqSigma:D
    .end local v69           #t1:D
    .end local v71           #t2:D
    .end local v73           #uSquared:D
    :cond_0
    mul-double v75, v21, v4

    sub-double v77, v53, v41

    mul-double v75, v75, v77

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v43, v0

    .line 370
    .local v43, distance:F
    const/16 v75, 0x0

    aput v43, p8, v75

    .line 371
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v75, v0

    const/16 v76, 0x1

    move/from16 v0, v75

    move/from16 v1, v76

    if-le v0, v1, :cond_1

    .line 372
    mul-double v75, v37, v57

    mul-double v77, v33, v67

    mul-double v79, v63, v37

    mul-double v79, v79, v27

    sub-double v77, v77, v79

    invoke-static/range {v75 .. v78}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v75

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v47, v0

    .line 374
    .local v47, initialBearing:F
    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v75, v0

    const-wide v77, 0x404ca5dc1a63c1f8L

    mul-double v75, v75, v77

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v47, v0

    .line 375
    const/16 v75, 0x1

    aput v47, p8, v75

    .line 376
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v75, v0

    const/16 v76, 0x2

    move/from16 v0, v75

    move/from16 v1, v76

    if-le v0, v1, :cond_1

    .line 377
    mul-double v75, v33, v57

    move-wide/from16 v0, v63

    neg-double v0, v0

    move-wide/from16 v77, v0

    mul-double v77, v77, v37

    mul-double v79, v33, v67

    mul-double v79, v79, v27

    add-double v77, v77, v79

    invoke-static/range {v75 .. v78}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v75

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v46, v0

    .line 379
    .local v46, finalBearing:F
    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v75, v0

    const-wide v77, 0x404ca5dc1a63c1f8L

    mul-double v75, v75, v77

    move-wide/from16 v0, v75

    double-to-float v0, v0

    move/from16 v46, v0

    .line 380
    const/16 v75, 0x2

    aput v46, p8, v75

    .line 383
    .end local v46           #finalBearing:F
    .end local v47           #initialBearing:F
    :cond_1
    return-void

    .line 333
    .end local v43           #distance:F
    .restart local v51       #lambdaOrig:D
    .restart local v61       #sinSqSigma:D
    .restart local v69       #t1:D
    .restart local v71       #t2:D
    :cond_2
    mul-double v75, v35, v57

    div-double v55, v75, v59

    goto/16 :goto_1

    .line 336
    .restart local v55       #sinAlpha:D
    :cond_3
    const-wide/high16 v75, 0x4000

    mul-double v75, v75, v65

    div-double v75, v75, v31

    sub-double v23, v29, v75

    goto/16 :goto_2

    .line 323
    .restart local v6       #B:D
    .restart local v8       #C:D
    .restart local v25       #cos2SMSq:D
    .restart local v39       #delta:D
    .restart local v73       #uSquared:D
    :cond_4
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_0
.end method

.method public static convert(Ljava/lang/String;)D
    .locals 21
    .parameter "coordinate"

    .prologue
    .line 224
    if-nez p0, :cond_0

    .line 225
    new-instance v17, Ljava/lang/NullPointerException;

    const-string v18, "coordinate"

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 228
    :cond_0
    const/4 v8, 0x0

    .line 229
    .local v8, negative:Z
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 230
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 231
    const/4 v8, 0x1

    .line 234
    :cond_1
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v17, ":"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .local v13, st:Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v14

    .line 236
    .local v14, tokens:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ge v14, v0, :cond_2

    .line 237
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 240
    :cond_2
    :try_start_0
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, degrees:Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_4

    .line 243
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    .line 244
    .local v15, val:D
    if-eqz v8, :cond_3

    neg-double v0, v15

    move-wide/from16 v17, v0

    .line 278
    :goto_0
    return-wide v17

    :cond_3
    move-wide/from16 v17, v15

    .line 244
    goto :goto_0

    .line 247
    .end local v15           #val:D
    :cond_4
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, minutes:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 250
    .local v2, deg:I
    const-wide/16 v10, 0x0

    .line 252
    .local v10, sec:D
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 253
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    int-to-double v5, v0

    .line 254
    .local v5, min:D
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 255
    .local v12, seconds:Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 260
    .end local v12           #seconds:Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_7

    const/16 v17, 0xb4

    move/from16 v0, v17

    if-ne v2, v0, :cond_7

    const-wide/16 v17, 0x0

    cmpl-double v17, v5, v17

    if-nez v17, :cond_7

    const-wide/16 v17, 0x0

    cmpl-double v17, v10, v17

    if-nez v17, :cond_7

    const/4 v4, 0x1

    .line 264
    .local v4, isNegative180:Z
    :goto_2
    int-to-double v0, v2

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpg-double v17, v17, v19

    if-ltz v17, :cond_5

    const/16 v17, 0xb3

    move/from16 v0, v17

    if-le v2, v0, :cond_8

    if-nez v4, :cond_8

    .line 265
    :cond_5
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v2           #deg:I
    .end local v3           #degrees:Ljava/lang/String;
    .end local v4           #isNegative180:Z
    .end local v5           #min:D
    .end local v7           #minutes:Ljava/lang/String;
    .end local v10           #sec:D
    :catch_0
    move-exception v9

    .line 280
    .local v9, nfe:Ljava/lang/NumberFormatException;
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 257
    .end local v9           #nfe:Ljava/lang/NumberFormatException;
    .restart local v2       #deg:I
    .restart local v3       #degrees:Ljava/lang/String;
    .restart local v7       #minutes:Ljava/lang/String;
    .restart local v10       #sec:D
    :cond_6
    :try_start_1
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .restart local v5       #min:D
    goto :goto_1

    .line 260
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 267
    .restart local v4       #isNegative180:Z
    :cond_8
    const-wide/16 v17, 0x0

    cmpg-double v17, v5, v17

    if-ltz v17, :cond_9

    const-wide v17, 0x404d800000000000L

    cmpl-double v17, v5, v17

    if-lez v17, :cond_a

    .line 268
    :cond_9
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 271
    :cond_a
    const-wide/16 v17, 0x0

    cmpg-double v17, v10, v17

    if-ltz v17, :cond_b

    const-wide v17, 0x404d800000000000L

    cmpl-double v17, v10, v17

    if-lez v17, :cond_c

    .line 272
    :cond_b
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    :cond_c
    int-to-double v0, v2

    move-wide/from16 v17, v0

    const-wide v19, 0x40ac200000000000L

    mul-double v17, v17, v19

    const-wide/high16 v19, 0x404e

    mul-double v19, v19, v5

    add-double v17, v17, v19

    add-double v15, v17, v10

    .line 277
    .restart local v15       #val:D
    const-wide v17, 0x40ac200000000000L

    div-double v15, v15, v17

    .line 278
    if-eqz v8, :cond_d

    neg-double v0, v15

    move-wide/from16 v17, v0

    goto/16 :goto_0

    :cond_d
    move-wide/from16 v17, v15

    goto/16 :goto_0
.end method

.method public static convert(DI)Ljava/lang/String;
    .locals 11
    .parameter "coordinate"
    .parameter "outputType"

    .prologue
    const/16 v10, 0x3a

    const/4 v9, 0x1

    const-wide/high16 v7, 0x404e

    const/4 v6, 0x2

    .line 176
    const-wide v4, -0x3f99800000000000L

    cmpg-double v4, p0, v4

    if-ltz v4, :cond_0

    const-wide v4, 0x4066800000000000L

    cmpl-double v4, p0, v4

    if-gtz v4, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "coordinate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 180
    :cond_1
    if-eqz p2, :cond_2

    if-eq p2, v9, :cond_2

    if-eq p2, v6, :cond_2

    .line 183
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "outputType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v3, sb:Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_3

    .line 190
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    neg-double p0, p0

    .line 194
    :cond_3
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "###.#####"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, df:Ljava/text/DecimalFormat;
    if-eq p2, v9, :cond_4

    if-ne p2, v6, :cond_5

    .line 196
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 197
    .local v0, degrees:I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    int-to-double v4, v0

    sub-double/2addr p0, v4

    .line 200
    mul-double/2addr p0, v7

    .line 201
    if-ne p2, v6, :cond_5

    .line 202
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 203
    .local v2, minutes:I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    int-to-double v4, v2

    sub-double/2addr p0, v4

    .line 206
    mul-double/2addr p0, v7

    .line 209
    .end local v0           #degrees:I
    .end local v2           #minutes:I
    :cond_5
    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static distanceBetween(DDDD[F)V
    .locals 2
    .parameter "startLatitude"
    .parameter "startLongitude"
    .parameter "endLatitude"
    .parameter "endLongitude"
    .parameter "results"

    .prologue
    .line 405
    if-eqz p8, :cond_0

    array-length v0, p8

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 406
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "results is null or has length < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_1
    invoke-static/range {p0 .. p8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    .line 410
    return-void
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .locals 10
    .parameter "dest"

    .prologue
    .line 449
    iget-object v9, p0, Landroid/location/Location;->mResults:[F

    monitor-enter v9

    .line 451
    :try_start_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon2:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    iget-object v8, p0, Landroid/location/Location;->mResults:[F

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    .line 455
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat1:D

    .line 456
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon1:D

    .line 457
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat2:D

    .line 458
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon2:D

    .line 459
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mDistance:F

    .line 460
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mInitialBearing:F

    .line 462
    :cond_1
    iget v0, p0, Landroid/location/Location;->mInitialBearing:F

    monitor-exit v9

    return v0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 885
    const/4 v0, 0x0

    return v0
.end method

.method public distanceTo(Landroid/location/Location;)F
    .locals 10
    .parameter "dest"

    .prologue
    .line 422
    iget-object v9, p0, Landroid/location/Location;->mResults:[F

    monitor-enter v9

    .line 423
    :try_start_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon2:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 425
    :cond_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    iget-object v8, p0, Landroid/location/Location;->mResults:[F

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    .line 427
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat1:D

    .line 428
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon1:D

    .line 429
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat2:D

    .line 430
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon2:D

    .line 431
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mDistance:F

    .line 432
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mInitialBearing:F

    .line 434
    :cond_1
    iget v0, p0, Landroid/location/Location;->mDistance:F

    monitor-exit v9

    return v0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 588
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Landroid/location/Location;->mBearing:F

    return v0
.end method

.method public getElapsedRealtimeNanos()J
    .locals 2

    .prologue
    .line 529
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public getExtraLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 2
    .parameter "key"

    .prologue
    .line 915
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 916
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 917
    .local v0, value:Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 918
    check-cast v0, Landroid/location/Location;

    .line 921
    .end local v0           #value:Landroid/os/Parcelable;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 548
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 565
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 500
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    return-wide v0
.end method

.method public hasAccuracy()Z
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    return v0
.end method

.method public hasAltitude()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    return v0
.end method

.method public hasBearing()Z
    .locals 1

    .prologue
    .line 653
    iget-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    return v0
.end method

.method public hasSpeed()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    return v0
.end method

.method public isComplete()Z
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    .line 771
    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 775
    :cond_0
    :goto_0
    return v0

    .line 772
    :cond_1
    iget-boolean v1, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-eqz v1, :cond_0

    .line 773
    iget-wide v1, p0, Landroid/location/Location;->mTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 774
    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 775
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public makeComplete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 788
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "?"

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 789
    :cond_0
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-nez v0, :cond_1

    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 791
    const/high16 v0, 0x42c8

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    .line 793
    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 794
    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 795
    :cond_3
    return-void
.end method

.method public removeAccuracy()V
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 756
    return-void
.end method

.method public removeAltitude()V
    .locals 2

    .prologue
    .line 608
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 610
    return-void
.end method

.method public removeBearing()V
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 697
    return-void
.end method

.method public removeSpeed()V
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 647
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 149
    iput-object v4, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 150
    iput-wide v5, p0, Landroid/location/Location;->mTime:J

    .line 151
    iput-wide v5, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 152
    iput-wide v1, p0, Landroid/location/Location;->mLatitude:D

    .line 153
    iput-wide v1, p0, Landroid/location/Location;->mLongitude:D

    .line 154
    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 155
    iput-wide v1, p0, Landroid/location/Location;->mAltitude:D

    .line 156
    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 157
    iput v3, p0, Landroid/location/Location;->mSpeed:F

    .line 158
    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 159
    iput v3, p0, Landroid/location/Location;->mBearing:F

    .line 160
    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 161
    iput v3, p0, Landroid/location/Location;->mAccuracy:F

    .line 162
    iput-object v4, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 163
    return-void
.end method

.method public set(Landroid/location/Location;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 129
    iget-object v0, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 130
    iget-wide v0, p1, Landroid/location/Location;->mTime:J

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 131
    iget-wide v0, p1, Landroid/location/Location;->mElapsedRealtimeNanos:J

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 132
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    .line 133
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    .line 134
    iget-boolean v0, p1, Landroid/location/Location;->mHasAltitude:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 135
    iget-wide v0, p1, Landroid/location/Location;->mAltitude:D

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 136
    iget-boolean v0, p1, Landroid/location/Location;->mHasSpeed:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 137
    iget v0, p1, Landroid/location/Location;->mSpeed:F

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 138
    iget-boolean v0, p1, Landroid/location/Location;->mHasBearing:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 139
    iget v0, p1, Landroid/location/Location;->mBearing:F

    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 140
    iget-boolean v0, p1, Landroid/location/Location;->mHasAccuracy:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 141
    iget v0, p1, Landroid/location/Location;->mAccuracy:F

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    .line 142
    iget-object v0, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 143
    return-void

    .line 142
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setAccuracy(F)V
    .locals 1
    .parameter "accuracy"

    .prologue
    .line 743
    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 745
    return-void
.end method

.method public setAltitude(D)V
    .locals 1
    .parameter "altitude"

    .prologue
    .line 597
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 599
    return-void
.end method

.method public setBearing(F)V
    .locals 2
    .parameter "bearing"

    .prologue
    const/high16 v1, 0x43b4

    .line 678
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 679
    add-float/2addr p1, v1

    goto :goto_0

    .line 681
    :cond_0
    :goto_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    .line 682
    sub-float/2addr p1, v1

    goto :goto_1

    .line 684
    :cond_1
    iput p1, p0, Landroid/location/Location;->mBearing:F

    .line 685
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 686
    return-void
.end method

.method public setElapsedRealtimeNanos(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 538
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 539
    return-void
.end method

.method public setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 932
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 933
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 935
    :cond_0
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 936
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .parameter "extras"

    .prologue
    .line 820
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 821
    return-void

    .line 820
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setLatitude(D)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 555
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    .line 556
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .parameter "longitude"

    .prologue
    .line 572
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    .line 573
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 479
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .parameter "speed"

    .prologue
    .line 634
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 636
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 510
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    .line 511
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 826
    .local v0, s:Ljava/lang/StringBuilder;
    const-string v1, "Location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    const-string v1, " %.6f,%.6f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Landroid/location/Location;->mLatitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    iget-wide v3, p0, Landroid/location/Location;->mLongitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    iget-boolean v1, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-eqz v1, :cond_5

    const-string v1, " acc=%.0f"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Landroid/location/Location;->mAccuracy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :goto_0
    iget-wide v1, p0, Landroid/location/Location;->mTime:J

    cmp-long v1, v1, v7

    if-nez v1, :cond_0

    .line 832
    const-string v1, " t=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    :cond_0
    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v1, v1, v7

    if-nez v1, :cond_6

    .line 835
    const-string v1, " et=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    :goto_1
    iget-boolean v1, p0, Landroid/location/Location;->mHasAltitude:Z

    if-eqz v1, :cond_1

    const-string v1, " alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 841
    :cond_1
    iget-boolean v1, p0, Landroid/location/Location;->mHasSpeed:Z

    if-eqz v1, :cond_2

    const-string v1, " vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 842
    :cond_2
    iget-boolean v1, p0, Landroid/location/Location;->mHasBearing:Z

    if-eqz v1, :cond_3

    const-string v1, " bear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 844
    :cond_3
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    .line 845
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 847
    :cond_4
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 830
    :cond_5
    const-string v1, " acc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 837
    :cond_6
    const-string v1, " et="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 890
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 891
    iget-wide v3, p0, Landroid/location/Location;->mTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 892
    iget-wide v3, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 893
    iget-wide v3, p0, Landroid/location/Location;->mLatitude:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 894
    iget-wide v3, p0, Landroid/location/Location;->mLongitude:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 895
    iget-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    iget-wide v3, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 897
    iget-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 898
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 899
    iget-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    iget v0, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 901
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 903
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 904
    return-void

    :cond_0
    move v0, v2

    .line 895
    goto :goto_0

    :cond_1
    move v0, v2

    .line 897
    goto :goto_1

    :cond_2
    move v0, v2

    .line 899
    goto :goto_2

    :cond_3
    move v1, v2

    .line 901
    goto :goto_3
.end method
