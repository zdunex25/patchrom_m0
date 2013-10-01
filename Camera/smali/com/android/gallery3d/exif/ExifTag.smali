.class public Lcom/android/gallery3d/exif/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# static fields
.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TYPE_TO_SIZE_MAP:[I

.field private static volatile sInteroperTagInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sTagInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mComponentCount:I

.field private final mComponentCountDefined:Z

.field private final mDataType:S

.field private final mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 531
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    .line 533
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v2

    .line 534
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v4

    .line 535
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 536
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v3, v0, v3

    .line 537
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x5

    aput v5, v0, v1

    .line 538
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 539
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 540
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0xa

    aput v5, v0, v1

    .line 559
    sput-object v6, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    .line 560
    sput-object v6, Lcom/android/gallery3d/exif/ExifTag;->sInteroperTagInfo:Landroid/util/SparseArray;

    .line 1252
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(SSII)V
    .locals 1
    .parameter "tagId"
    .parameter "type"
    .parameter "componentCount"
    .parameter "ifd"

    .prologue
    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    iput-short p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    .line 916
    iput-short p2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    .line 917
    iput p3, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCount:I

    .line 918
    invoke-static {p1, p4}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCountDefined(SI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountDefined:Z

    .line 919
    iput p4, p0, Lcom/android/gallery3d/exif/ExifTag;->mIfd:I

    .line 920
    return-void
.end method

.method public static buildTag(S)Lcom/android/gallery3d/exif/ExifTag;
    .locals 5
    .parameter "tagId"

    .prologue
    .line 877
    invoke-static {}, Lcom/android/gallery3d/exif/ExifTag;->getTagInfo()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 878
    .local v0, info:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 879
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Tag ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 881
    :cond_0
    new-instance v1, Lcom/android/gallery3d/exif/ExifTag;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifTag;->getTypeFromInfo(I)S

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCountFromInfo(I)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/gallery3d/exif/ExifTag;->getIfdIdFromInfo(I)I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSII)V

    return-object v1
.end method

.method private checkComponentCountOrThrow(I)V
    .locals 3
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 999
    iget-boolean v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountDefined:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCount:I

    if-eq v0, p1, :cond_0

    .line 1000
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Required "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " components but was given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " component(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1004
    :cond_0
    return-void
.end method

.method private checkOverflowForRational([Lcom/android/gallery3d/exif/Rational;)V
    .locals 10
    .parameter "value"

    .prologue
    const-wide/32 v8, 0x7fffffff

    const-wide/32 v6, -0x80000000

    .line 1083
    move-object v0, p1

    .local v0, arr$:[Lcom/android/gallery3d/exif/Rational;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1084
    .local v3, v:Lcom/android/gallery3d/exif/Rational;
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getNominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getNominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 1087
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-short v6, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is illegal for type RATIONAL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1083
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1092
    .end local v3           #v:Lcom/android/gallery3d/exif/Rational;
    :cond_2
    return-void
.end method

.method private checkOverflowForUnsignedLong([I)V
    .locals 7
    .parameter "value"

    .prologue
    .line 1061
    move-object v0, p1

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 1062
    .local v3, v:I
    if-gez v3, :cond_0

    .line 1063
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-short v6, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is illegal for type UNSIGNED_LONG"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1061
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1068
    .end local v3           #v:I
    :cond_1
    return-void
.end method

.method private checkOverflowForUnsignedLong([J)V
    .locals 8
    .parameter "value"

    .prologue
    .line 1051
    move-object v0, p1

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-wide v3, v0, v1

    .line 1052
    .local v3, v:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_0

    const-wide v5, 0xffffffffL

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 1053
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v7, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is illegal for type UNSIGNED_LONG"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1051
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1058
    .end local v3           #v:J
    :cond_2
    return-void
.end method

.method private checkOverflowForUnsignedRational([Lcom/android/gallery3d/exif/Rational;)V
    .locals 10
    .parameter "value"

    .prologue
    const-wide v8, 0xffffffffL

    const-wide/16 v6, 0x0

    .line 1071
    move-object v0, p1

    .local v0, arr$:[Lcom/android/gallery3d/exif/Rational;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1072
    .local v3, v:Lcom/android/gallery3d/exif/Rational;
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getNominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getNominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 1075
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-short v6, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is illegal for type UNSIGNED_RATIONAL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1071
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1080
    .end local v3           #v:Lcom/android/gallery3d/exif/Rational;
    :cond_2
    return-void
.end method

.method private checkOverflowForUnsignedShort([I)V
    .locals 7
    .parameter "value"

    .prologue
    .line 1041
    move-object v0, p1

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    .line 1042
    .local v3, v:I
    const v4, 0xffff

    if-gt v3, v4, :cond_0

    if-gez v3, :cond_1

    .line 1043
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-short v6, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is illegal for type UNSIGNED_SHORT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1041
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1048
    .end local v3           #v:I
    :cond_2
    return-void
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1013
    packed-switch p0, :pswitch_data_0

    .line 1031
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 1015
    :pswitch_1
    const-string v0, "UNSIGNED_BYTE"

    goto :goto_0

    .line 1017
    :pswitch_2
    const-string v0, "ASCII"

    goto :goto_0

    .line 1019
    :pswitch_3
    const-string v0, "UNSIGNED_SHORT"

    goto :goto_0

    .line 1021
    :pswitch_4
    const-string v0, "UNSIGNED_LONG"

    goto :goto_0

    .line 1023
    :pswitch_5
    const-string v0, "UNSIGNED_RATIONAL"

    goto :goto_0

    .line 1025
    :pswitch_6
    const-string v0, "UNDEFINED"

    goto :goto_0

    .line 1027
    :pswitch_7
    const-string v0, "LONG"

    goto :goto_0

    .line 1029
    :pswitch_8
    const-string v0, "RATIONAL"

    goto :goto_0

    .line 1013
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static getComponentCountDefined(SI)Z
    .locals 3
    .parameter "tagId"
    .parameter "ifd"

    .prologue
    const/4 v2, 0x0

    .line 857
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/android/gallery3d/exif/ExifTag;->getInteroperTagInfo()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    .line 859
    .local v0, info:Ljava/lang/Integer;
    :goto_0
    if-nez v0, :cond_1

    .line 860
    :goto_1
    return v2

    .line 857
    .end local v0           #info:Ljava/lang/Integer;
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/exif/ExifTag;->getTagInfo()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    goto :goto_0

    .line 860
    .restart local v0       #info:Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCountFromInfo(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private static getComponentCountFromInfo(I)I
    .locals 1
    .parameter "info"

    .prologue
    .line 849
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getElementSize(S)I
    .locals 1
    .parameter "type"

    .prologue
    .line 556
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aget v0, v0, p0

    return v0
.end method

.method private static getIfdIdFromInfo(I)I
    .locals 1
    .parameter "info"

    .prologue
    .line 853
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method static getIfdIdFromTagId(S)I
    .locals 4
    .parameter "tagId"

    .prologue
    .line 864
    invoke-static {}, Lcom/android/gallery3d/exif/ExifTag;->getTagInfo()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 865
    .local v0, info:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 866
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Tag ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 868
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifTag;->getIfdIdFromInfo(I)I

    move-result v1

    return v1
.end method

.method private static getInteroperTagInfo()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sInteroperTagInfo:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 577
    const-class v1, Lcom/android/gallery3d/exif/ExifTag;

    monitor-enter v1

    .line 578
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sInteroperTagInfo:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 579
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/gallery3d/exif/ExifTag;->sInteroperTagInfo:Landroid/util/SparseArray;

    .line 580
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sInteroperTagInfo:Landroid/util/SparseArray;

    const/4 v2, 0x1

    const/high16 v3, 0x302

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 584
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :cond_1
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sInteroperTagInfo:Landroid/util/SparseArray;

    return-object v0

    .line 584
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getTagInfo()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 565
    const-class v1, Lcom/android/gallery3d/exif/ExifTag;

    monitor-enter v1

    .line 566
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    .line 568
    invoke-static {}, Lcom/android/gallery3d/exif/ExifTag;->initTagInfo()V

    .line 570
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    :cond_1
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    return-object v0

    .line 570
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getTypeFromInfo(I)S
    .locals 1
    .parameter "info"

    .prologue
    .line 845
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static initTagInfo()V
    .locals 8

    .prologue
    const/high16 v7, 0x2

    const v6, 0x4050001

    const v5, 0x4020002

    const v4, 0x2050001

    const v3, 0x2030001

    .line 596
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x10f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 598
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x100

    const v2, 0x40001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 600
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x101

    const v2, 0x40001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 602
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x102

    const v2, 0x30003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 604
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x103

    const v2, 0x30001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 606
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x106

    const v2, 0x30001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 608
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x112

    const v2, 0x30001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 609
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x115

    const v2, 0x30001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 611
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x11c

    const v2, 0x30001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 613
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x212

    const v2, 0x30002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 615
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x213

    const v2, 0x30001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 617
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x11a

    const v2, 0x50001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 619
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x11b

    const v2, 0x50001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 621
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x128

    const v2, 0x30001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 623
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x111

    const/high16 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 625
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x116

    const v2, 0x40001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 627
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x117

    const/high16 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 629
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x201

    const v2, 0x40001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 631
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x202

    const v2, 0x40001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 633
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x12d

    const v2, 0x30300

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 635
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x13e

    const v2, 0x50002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 637
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x13f

    const v2, 0x50006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 639
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x211

    const v2, 0x50003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 641
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x214

    const v2, 0x50006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 643
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x132

    const v2, 0x20014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 645
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x10e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 647
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x10f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 649
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x110

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 651
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x131

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 653
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x13b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 655
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x7d68

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 657
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x7897

    const v2, 0x40001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 659
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x77db

    const v2, 0x40001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 663
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x7000

    const v2, 0x2070004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 665
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6000

    const v2, 0x2070004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 667
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5fff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 669
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6eff

    const v2, 0x2070004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 671
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6efe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 673
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5ffe

    const v2, 0x2040001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 675
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5ffd

    const v2, 0x2040001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 677
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6d84

    const/high16 v2, 0x207

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 679
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6d7a

    const/high16 v2, 0x207

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 681
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5ffc

    const v2, 0x202000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 683
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6ffd

    const v2, 0x2020014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 685
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6ffc

    const v2, 0x2020014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 687
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6d70

    const/high16 v2, 0x202

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 689
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6d6f

    const/high16 v2, 0x202

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 691
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6d6e

    const/high16 v2, 0x202

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 693
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5be0

    const v2, 0x2020021

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 695
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x7d66

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 697
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x7d63

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 699
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x77de

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 701
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x77dc

    const/high16 v2, 0x202

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 703
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x77d9

    const/high16 v2, 0x203

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 705
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x77d8

    const/high16 v2, 0x207

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 707
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6dff

    const v2, 0x20a0001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 709
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6dfe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 711
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6dfd

    const v2, 0x20a0001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 713
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6dfc

    const v2, 0x20a0001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 715
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6dfb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 717
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6dfa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 719
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6df9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 721
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6df8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 723
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6df7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 725
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6df6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 727
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x6dec

    const/high16 v2, 0x203

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 729
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5df5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 731
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5df4

    const/high16 v2, 0x207

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 733
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5df2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 735
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5df1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 737
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5df0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 739
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5dec

    const v2, 0x2030002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 741
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5deb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 743
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5de9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 745
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5d00

    const v2, 0x2070001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 747
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5cff

    const v2, 0x2070001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 749
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5cfe

    const/high16 v2, 0x207

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 751
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5bff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 753
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5bfe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 755
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5bfd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 757
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5bfc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 759
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5bfb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 761
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5bfa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 763
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5bf9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 765
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5bf8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 767
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5bf7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 769
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5bf6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 771
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5bf5

    const/high16 v2, 0x207

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 773
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, -0x5bf4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 776
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const v2, 0x4010004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 778
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 780
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 782
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const v2, 0x40a0003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 784
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const v2, 0x40a0003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 786
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const v2, 0x4010001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 788
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 790
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const v2, 0x4050003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 792
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const/high16 v2, 0x402

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 794
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 796
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 798
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 800
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 802
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 804
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 806
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 808
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 810
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 812
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x12

    const/high16 v2, 0x402

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 814
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 816
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 818
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 820
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 822
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 824
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x1a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 826
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x1b

    const/high16 v2, 0x407

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 828
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x1c

    const/high16 v2, 0x407

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 830
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x1d

    const v2, 0x402000b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 832
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->sTagInfo:Landroid/util/SparseArray;

    const/16 v1, 0x1e

    const v2, 0x403000b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 834
    return-void
.end method

.method static isOffsetTag(S)Z
    .locals 1
    .parameter "tagId"

    .prologue
    .line 1411
    const/16 v0, -0x7897

    if-eq p0, v0, :cond_0

    const/16 v0, -0x77db

    if-eq p0, v0, :cond_0

    const/16 v0, 0x201

    if-eq p0, v0, :cond_0

    const/16 v0, 0x111

    if-eq p0, v0, :cond_0

    const/16 v0, -0x5ffb

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private throwTypeNotMatchedException(Ljava/lang/String;)V
    .locals 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1008
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": expect type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 1420
    instance-of v2, p1, Lcom/android/gallery3d/exif/ExifTag;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1421
    check-cast v0, Lcom/android/gallery3d/exif/ExifTag;

    .line 1422
    .local v0, tag:Lcom/android/gallery3d/exif/ExifTag;
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 1423
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_2

    .line 1424
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-nez v2, :cond_1

    .line 1439
    .end local v0           #tag:Lcom/android/gallery3d/exif/ExifTag;
    :cond_0
    :goto_0
    return v1

    .line 1425
    .restart local v0       #tag:Lcom/android/gallery3d/exif/ExifTag;
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [J

    check-cast v2, [J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    goto :goto_0

    .line 1426
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/android/gallery3d/exif/Rational;

    if-eqz v2, :cond_3

    .line 1427
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/android/gallery3d/exif/Rational;

    if-eqz v2, :cond_0

    .line 1428
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Lcom/android/gallery3d/exif/Rational;

    check-cast v1, [Lcom/android/gallery3d/exif/Rational;

    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [Lcom/android/gallery3d/exif/Rational;

    check-cast v2, [Lcom/android/gallery3d/exif/Rational;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 1429
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_4

    .line 1430
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_0

    .line 1431
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0

    .line 1433
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 1436
    :cond_5
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBytes([B)V
    .locals 2
    .parameter "buf"

    .prologue
    .line 1334
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/exif/ExifTag;->getBytes([BII)V

    .line 1335
    return-void
.end method

.method public getBytes([BII)V
    .locals 3
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 1349
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get BYTE value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1353
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCount:I

    if-le p3, v2, :cond_1

    iget p3, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCount:I

    .end local p3
    :cond_1
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1355
    return-void
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 969
    iget v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCount:I

    return v0
.end method

.method public getDataSize()I
    .locals 2

    .prologue
    .line 962
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v1

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifTag;->getElementSize(S)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getDataType()S
    .locals 1

    .prologue
    .line 955
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    return v0
.end method

.method public getIfd()I
    .locals 1

    .prologue
    .line 932
    iget v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mIfd:I

    return v0
.end method

.method public getLong(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 1286
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get LONG value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    aget-wide v0, v0, p1

    long-to-int v0, v0

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mOffset:I

    return v0
.end method

.method public getRational(I)Lcom/android/gallery3d/exif/Rational;
    .locals 3
    .parameter "index"

    .prologue
    .line 1323
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get RATIONAL value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/android/gallery3d/exif/Rational;

    check-cast v0, [Lcom/android/gallery3d/exif/Rational;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1310
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get ASCII value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTagId()S
    .locals 1

    .prologue
    .line 939
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    return v0
.end method

.method public getUnsignedLong(I)J
    .locals 3
    .parameter "index"

    .prologue
    .line 1298
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get UNSIGNED LONG value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getUnsignedShort(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 1274
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get UNSIGNED_SHORT value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    aget-wide v0, v0, p1

    long-to-int v0, v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 994
    iput p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mOffset:I

    .line 995
    return-void
.end method

.method public setTimeValue(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 1264
    sget-object v1, Lcom/android/gallery3d/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    .line 1265
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifTag;->setValue(Ljava/lang/String;)V

    .line 1266
    monitor-exit v1

    .line 1267
    return-void

    .line 1266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 1136
    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifTag;->checkComponentCountOrThrow(I)V

    .line 1137
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifTag;->setValue([I)V

    .line 1138
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifTag;->checkComponentCountOrThrow(I)V

    .line 1181
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1182
    const-string v0, "String"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifTag;->throwTypeNotMatchedException(Ljava/lang/String;)V

    .line 1184
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCount:I

    .line 1185
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 1186
    return-void
.end method

.method public setValue([B)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1249
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/exif/ExifTag;->setValue([BII)V

    .line 1250
    return-void
.end method

.method public setValue([BII)V
    .locals 2
    .parameter "value"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 1236
    invoke-direct {p0, p3}, Lcom/android/gallery3d/exif/ExifTag;->checkComponentCountOrThrow(I)V

    .line 1237
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 1238
    const-string v0, "byte"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifTag;->throwTypeNotMatchedException(Ljava/lang/String;)V

    .line 1240
    :cond_0
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 1241
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1242
    iput p3, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCount:I

    .line 1243
    return-void
.end method

.method public setValue([I)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 1106
    array-length v2, p1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/exif/ExifTag;->checkComponentCountOrThrow(I)V

    .line 1107
    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v2, v4, :cond_0

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v2, v5, :cond_0

    .line 1109
    const-string v2, "int"

    invoke-direct {p0, v2}, Lcom/android/gallery3d/exif/ExifTag;->throwTypeNotMatchedException(Ljava/lang/String;)V

    .line 1111
    :cond_0
    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v2, v4, :cond_2

    .line 1112
    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifTag;->checkOverflowForUnsignedShort([I)V

    .line 1117
    :cond_1
    :goto_0
    array-length v2, p1

    new-array v0, v2, [J

    .line 1118
    .local v0, data:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 1119
    aget v2, p1, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 1118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1113
    .end local v0           #data:[J
    .end local v1           #i:I
    :cond_2
    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v2, v5, :cond_1

    .line 1114
    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifTag;->checkOverflowForUnsignedLong([I)V

    goto :goto_0

    .line 1121
    .restart local v0       #data:[J
    .restart local v1       #i:I
    :cond_3
    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 1122
    array-length v2, p1

    iput v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCount:I

    .line 1123
    return-void
.end method

.method public setValue([J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1151
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifTag;->checkComponentCountOrThrow(I)V

    .line 1152
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1153
    const-string v0, "long"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifTag;->throwTypeNotMatchedException(Ljava/lang/String;)V

    .line 1155
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifTag;->checkOverflowForUnsignedLong([J)V

    .line 1156
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 1157
    array-length v0, p1

    iput v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCount:I

    .line 1158
    return-void
.end method

.method public setValue([Lcom/android/gallery3d/exif/Rational;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1200
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1201
    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifTag;->checkOverflowForUnsignedRational([Lcom/android/gallery3d/exif/Rational;)V

    .line 1207
    :goto_0
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifTag;->checkComponentCountOrThrow(I)V

    .line 1208
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 1209
    array-length v0, p1

    iput v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCount:I

    .line 1210
    return-void

    .line 1202
    :cond_0
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1203
    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifTag;->checkOverflowForRational([Lcom/android/gallery3d/exif/Rational;)V

    goto :goto_0

    .line 1205
    :cond_1
    const-string v0, "Rational"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/exif/ExifTag;->throwTypeNotMatchedException(Ljava/lang/String;)V

    goto :goto_0
.end method
