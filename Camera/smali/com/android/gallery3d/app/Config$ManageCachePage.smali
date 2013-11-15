.class public Lcom/android/gallery3d/app/Config$ManageCachePage;
.super Lcom/android/gallery3d/app/Config$AlbumSetPage;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManageCachePage"
.end annotation


# static fields
.field private static sInstance:Lcom/android/gallery3d/app/Config$ManageCachePage;


# instance fields
.field public final cachePinMargin:I

.field public final cachePinSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 120
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/app/Config$AlbumSetPage;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/Config$1;)V

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 122
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0e005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$ManageCachePage;->cachePinSize:I

    .line 123
    const v1, 0x7f0e005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/Config$ManageCachePage;->cachePinMargin:I

    .line 124
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$ManageCachePage;
    .locals 2
    .parameter "context"

    .prologue
    .line 113
    const-class v1, Lcom/android/gallery3d/app/Config$ManageCachePage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/app/Config$ManageCachePage;->sInstance:Lcom/android/gallery3d/app/Config$ManageCachePage;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/android/gallery3d/app/Config$ManageCachePage;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/Config$ManageCachePage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/app/Config$ManageCachePage;->sInstance:Lcom/android/gallery3d/app/Config$ManageCachePage;

    .line 116
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/Config$ManageCachePage;->sInstance:Lcom/android/gallery3d/app/Config$ManageCachePage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
