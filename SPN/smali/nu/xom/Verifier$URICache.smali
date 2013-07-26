.class final Lnu/xom/Verifier$URICache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnu/xom/Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "URICache"
.end annotation


# static fields
.field private static final LOAD:I = 0x6


# instance fields
.field private cache:[Ljava/lang/String;

.field private position:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lnu/xom/Verifier$URICache;->cache:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lnu/xom/Verifier$URICache;->position:I

    return-void
.end method

.method synthetic constructor <init>(Lnu/xom/Verifier$1;)V
    .locals 0

    invoke-direct {p0}, Lnu/xom/Verifier$URICache;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized contains(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    monitor-enter p0

    move v0, v2

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lnu/xom/Verifier$URICache;->cache:[Ljava/lang/String;

    aget-object v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized put(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnu/xom/Verifier$URICache;->cache:[Ljava/lang/String;

    iget v1, p0, Lnu/xom/Verifier$URICache;->position:I

    aput-object p1, v0, v1

    iget v0, p0, Lnu/xom/Verifier$URICache;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnu/xom/Verifier$URICache;->position:I

    iget v0, p0, Lnu/xom/Verifier$URICache;->position:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lnu/xom/Verifier$URICache;->position:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
