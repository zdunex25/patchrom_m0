.class public Lcom/android/gallery3d/ui/DetailsAddressResolver;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;,
        Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;
    }
.end annotation


# instance fields
.field private mAddressLookupJob:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mContext:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/DetailsAddressResolver;)Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mContext:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/ui/DetailsAddressResolver;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/DetailsAddressResolver;Landroid/location/Address;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->updateLocation(Landroid/location/Address;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/DetailsAddressResolver;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateLocation(Landroid/location/Address;)V
    .locals 11
    .parameter "address"

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 84
    if-eqz p1, :cond_4

    .line 85
    iget-object v5, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mContext:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 86
    .local v1, context:Landroid/content/Context;
    const/16 v5, 0x9

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    const/4 v5, 0x3

    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v10

    const/4 v5, 0x5

    invoke-virtual {p1}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x6

    invoke-virtual {p1}, Landroid/location/Address;->getPremises()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x7

    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/16 v5, 0x8

    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 98
    .local v3, parts:[Ljava/lang/String;
    const-string v0, ""

    .line 99
    .local v0, addressText:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 100
    aget-object v5, v3, v2

    if-eqz v5, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 106
    :cond_3
    const-string v5, "%s : %s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1, v10}, Lcom/android/gallery3d/ui/DetailsHelper;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v0, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, text:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mListener:Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    invoke-interface {v5, v4}, Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;->onAddressAvailable(Ljava/lang/String;)V

    .line 110
    .end local v0           #addressText:Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #i:I
    .end local v3           #parts:[Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/android/gallery3d/util/Future;

    .line 117
    :cond_0
    return-void
.end method

.method public resolveAddress([DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
    .locals 5
    .parameter "latlng"
    .parameter "listener"

    .prologue
    .line 63
    iput-object p2, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mListener:Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mContext:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;-><init>(Lcom/android/gallery3d/ui/DetailsAddressResolver;[D)V

    new-instance v2, Lcom/android/gallery3d/ui/DetailsAddressResolver$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/DetailsAddressResolver$1;-><init>(Lcom/android/gallery3d/ui/DetailsAddressResolver;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/android/gallery3d/util/Future;

    .line 80
    const-string v0, "(%f,%f)"

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    const/4 v3, 0x1

    aget-wide v3, p1, v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/GalleryUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
