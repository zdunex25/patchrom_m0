.class public Landroid/widget/RemoteViewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;,
        Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteViewsAdapter"

.field private static final sDefaultCacheSize:I = 0x28

.field private static final sDefaultLoadingViewHeight:I = 0x32

.field private static final sDefaultMessageType:I = 0x0

.field private static final sUnbindServiceDelay:I = 0x1388

.field private static final sUnbindServiceMessageType:I = 0x1


# instance fields
.field private final mAppWidgetId:I

.field private mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMainQueue:Landroid/os/Handler;

.field private mNotifyDataSetChangedAfterOnServiceConnected:Z

.field private mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

.field private mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

.field private mVisibleWindowLowerBound:I

.field private mVisibleWindowUpperBound:I

.field private mWorkerQueue:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .parameter "callback"

    .prologue
    .line 719
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    .line 720
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    .line 721
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    .line 722
    const-string v0, "remoteAdapterAppWidgetId"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    .line 723
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 724
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 725
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null Intent must be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_0
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    .line 730
    const-string v0, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    const-string v0, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 735
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemoteViewsCache-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    .line 736
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 737
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    .line 738
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    .line 741
    new-instance v0, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    const/16 v1, 0x28

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;-><init>(Landroid/widget/RemoteViewsAdapter;I)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .line 742
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;

    .line 743
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    .line 744
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()Z

    .line 745
    return-void
.end method

.method static synthetic access$000(Landroid/widget/RemoteViewsAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->onNotifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/RemoteViewsAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/RemoteViewsAdapter;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/RemoteViewsAdapter;IZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViewsAdapter;->updateRemoteViews(IZZ)V

    return-void
.end method

.method static synthetic access$1400(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    return-void
.end method

.method static synthetic access$1500(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->updateTemporaryMetaData()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/RemoteViewsAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V

    return-void
.end method

.method private enqueueDeferredUnbindServiceMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1157
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1158
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1159
    return-void
.end method

.method private getConvertViewTypeId(Landroid/view/View;)I
    .locals 3
    .parameter "convertView"

    .prologue
    .line 929
    const/4 v1, -0x1

    .line 930
    .local v1, typeId:I
    if-eqz p1, :cond_0

    .line 931
    const v2, 0x1020254

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 932
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 933
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 936
    :cond_0
    return v1
.end method

.method private loadNextIndexInBackground()V
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    new-instance v1, Landroid/widget/RemoteViewsAdapter$1;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$1;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 784
    return-void
.end method

.method private onNotifyDataSetChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1057
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v1

    .line 1059
    .local v1, factory:Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1072
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v5

    .line 1073
    :try_start_1
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    .line 1074
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1077
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->updateTemporaryMetaData()V

    .line 1079
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v5

    monitor-enter v5

    .line 1080
    :try_start_2
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v4

    iget v3, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 1081
    .local v3, newCount:I
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1086
    iget v2, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    .local v2, i:I
    :goto_0
    iget v4, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    if-gt v2, v4, :cond_1

    .line 1089
    if-ge v2, v3, :cond_0

    .line 1090
    invoke-direct {p0, v2, v6, v6}, Landroid/widget/RemoteViewsAdapter;->updateRemoteViews(IZZ)V

    .line 1086
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1060
    .end local v2           #i:I
    .end local v3           #newCount:I
    :catch_0
    move-exception v0

    .line 1061
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "RemoteViewsAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 1066
    :catch_1
    move-exception v0

    .line 1067
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "RemoteViewsAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1074
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1081
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 1095
    .restart local v2       #i:I
    .restart local v3       #newCount:I
    :cond_1
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v5, Landroid/widget/RemoteViewsAdapter$4;

    invoke-direct {v5, p0}, Landroid/widget/RemoteViewsAdapter$4;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1108
    iput-boolean v6, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    goto :goto_1
.end method

.method private processException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .parameter "method"
    .parameter "e"

    .prologue
    .line 787
    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 792
    .local v0, metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 793
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    .line 794
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v2

    .line 796
    :try_start_1
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    .line 797
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 798
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v2, Landroid/widget/RemoteViewsAdapter$2;

    invoke-direct {v2, p0}, Landroid/widget/RemoteViewsAdapter$2;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 804
    return-void

    .line 794
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 797
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private requestBindService()Z
    .locals 4

    .prologue
    .line 1163
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->bind(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1168
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1169
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method private updateRemoteViews(IZZ)V
    .locals 11
    .parameter "position"
    .parameter "isRequested"
    .parameter "notifyWhenLoaded"

    .prologue
    .line 837
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v7

    .line 840
    .local v7, factory:Lcom/android/internal/widget/IRemoteViewsFactory;
    const/4 v2, 0x0

    .line 841
    .local v2, remoteViews:Landroid/widget/RemoteViews;
    const-wide/16 v3, 0x0

    .line 843
    .local v3, itemId:J
    :try_start_0
    invoke-interface {v7, p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 844
    invoke-interface {v7, p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getItemId(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v3

    .line 856
    if-nez v2, :cond_0

    .line 860
    const-string v0, "RemoteViewsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in updateRemoteViews("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " null RemoteViews "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "returned from RemoteViewsFactory."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :goto_0
    return-void

    .line 845
    :catch_0
    move-exception v6

    .line 846
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "RemoteViewsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in updateRemoteViews("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 851
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 852
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v0, "RemoteViewsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in updateRemoteViews("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 864
    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_0
    iget-object v10, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v10

    .line 866
    :try_start_1
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->insert(ILandroid/widget/RemoteViews;JZ)V

    .line 870
    move-object v8, v2

    .line 871
    .local v8, rv:Landroid/widget/RemoteViews;
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v0

    iget v9, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 872
    .local v9, typeId:I
    if-eqz p3, :cond_1

    .line 873
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v1, Landroid/widget/RemoteViewsAdapter$3;

    invoke-direct {v1, p0, p1, v8, v9}, Landroid/widget/RemoteViewsAdapter$3;-><init>(Landroid/widget/RemoteViewsAdapter;ILandroid/widget/RemoteViews;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 880
    :cond_1
    monitor-exit v10

    goto :goto_0

    .end local v8           #rv:Landroid/widget/RemoteViews;
    .end local v9           #typeId:I
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateTemporaryMetaData()V
    .locals 9

    .prologue
    .line 807
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v2

    .line 812
    .local v2, factory:Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->hasStableIds()Z

    move-result v4

    .line 813
    .local v4, hasStableIds:Z
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewTypeCount()I

    move-result v7

    .line 814
    .local v7, viewTypeCount:I
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getCount()I

    move-result v0

    .line 815
    .local v0, count:I
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v5

    .line 816
    .local v5, loadingView:Landroid/widget/RemoteViews;
    const/4 v3, 0x0

    .line 817
    .local v3, firstView:Landroid/widget/RemoteViews;
    if-lez v0, :cond_0

    if-nez v5, :cond_0

    .line 818
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 820
    :cond_0
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v8}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v6

    .line 821
    .local v6, tmpMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 822
    :try_start_1
    iput-boolean v4, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 824
    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 825
    iput v0, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 826
    invoke-virtual {v6, v5, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 827
    monitor-exit v6

    .line 833
    .end local v0           #count:I
    .end local v3           #firstView:Landroid/widget/RemoteViews;
    .end local v4           #hasStableIds:Z
    .end local v5           #loadingView:Landroid/widget/RemoteViews;
    .end local v6           #tmpMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v7           #viewTypeCount:I
    :goto_0
    return-void

    .line 827
    .restart local v0       #count:I
    .restart local v3       #firstView:Landroid/widget/RemoteViews;
    .restart local v4       #hasStableIds:Z
    .restart local v5       #loadingView:Landroid/widget/RemoteViews;
    .restart local v6       #tmpMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v7       #viewTypeCount:I
    :catchall_0
    move-exception v8

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 828
    .end local v0           #count:I
    .end local v3           #firstView:Landroid/widget/RemoteViews;
    .end local v4           #hasStableIds:Z
    .end local v5           #loadingView:Landroid/widget/RemoteViews;
    .end local v6           #tmpMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v7           #viewTypeCount:I
    :catch_0
    move-exception v1

    .line 829
    .local v1, e:Landroid/os/RemoteException;
    const-string v8, "updateMetaData"

    invoke-direct {p0, v8, v1}, Landroid/widget/RemoteViewsAdapter;->processException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 830
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 831
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v8, "updateMetaData"

    invoke-direct {p0, v8, v1}, Landroid/widget/RemoteViewsAdapter;->processException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 750
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 756
    return-void

    .line 754
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 888
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 889
    .local v0, metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 890
    :try_start_0
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    monitor-exit v0

    return v1

    .line 891
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 896
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 900
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v2

    .line 901
    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v0

    iget-wide v0, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J

    monitor-exit v2

    .line 904
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 905
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 909
    const/4 v1, 0x0

    .line 910
    .local v1, typeId:I
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v3

    .line 911
    :try_start_0
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 912
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v2

    iget v1, v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 916
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 919
    .local v0, metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 920
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getMappedViewType(I)I

    move-result v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0           #metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    :goto_0
    return v2

    .line 914
    :cond_0
    const/4 v2, 0x0

    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 916
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 921
    .restart local v0       #metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public getRemoteViewsServiceIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 953
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsRemoteViewAt(I)Z

    move-result v10

    .line 954
    .local v10, isInCache:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v9

    .line 955
    .local v9, isConnected:Z
    const/4 v7, 0x0

    .line 957
    .local v7, hasNewItems:Z
    if-nez v10, :cond_1

    if-nez v9, :cond_1

    .line 960
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()Z

    .line 966
    :goto_0
    if-eqz v10, :cond_7

    .line 967
    const/4 v4, 0x0

    .line 968
    .local v4, convertViewChild:Landroid/view/View;
    const/4 v5, 0x0

    .line 969
    .local v5, convertViewTypeId:I
    const/4 v11, 0x0

    .line 971
    .local v11, layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 972
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-object v11, v0

    .line 973
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 974
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/RemoteViewsAdapter;->getConvertViewTypeId(Landroid/view/View;)I

    move-result v5

    move-object v12, v11

    .line 979
    .end local v11           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .local v12, layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 980
    .local v3, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsAt(I)Landroid/widget/RemoteViews;

    move-result-object v16

    .line 981
    .local v16, rv:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v8

    .line 982
    .local v8, indexMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v8, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->isRequested:Z

    .line 983
    iget v0, v8, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    move/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    .local v17, typeId:I
    if-eqz v12, :cond_4

    .line 988
    move/from16 v0, v17

    if-ne v5, v0, :cond_2

    .line 989
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1017
    if-eqz v7, :cond_0

    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    .line 990
    :cond_0
    monitor-exit v19

    move-object v13, v12

    .line 1032
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #convertViewChild:Landroid/view/View;
    .end local v5           #convertViewTypeId:I
    .end local v8           #indexMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v12           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v16           #rv:Landroid/widget/RemoteViews;
    .end local v17           #typeId:I
    :goto_2
    return-object v13

    .line 963
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queuePositionsToBePreloadedFromRequestedPosition(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    goto :goto_0

    .line 992
    .restart local v3       #context:Landroid/content/Context;
    .restart local v4       #convertViewChild:Landroid/view/View;
    .restart local v5       #convertViewTypeId:I
    .restart local v8       #indexMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v12       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v16       #rv:Landroid/widget/RemoteViews;
    .restart local v17       #typeId:I
    :cond_2
    :try_start_3
    invoke-virtual {v12}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->removeAllViews()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v11, v12

    .line 998
    .end local v12           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v11       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_3
    :try_start_4
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 999
    .local v15, newView:Landroid/view/View;
    const v18, 0x1020254

    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1001
    invoke-virtual {v11, v15}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1017
    if-eqz v7, :cond_3

    :try_start_5
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    .line 1002
    :cond_3
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v13, v11

    goto :goto_2

    .line 994
    .end local v11           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v15           #newView:Landroid/view/View;
    .restart local v12       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :cond_4
    :try_start_6
    new-instance v11, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/widget/RemoteViewsAdapter;Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .end local v12           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v11       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_3

    .line 1004
    .end local v11           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v12       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :catch_0
    move-exception v6

    move-object v11, v12

    .line 1007
    .end local v12           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .local v6, e:Ljava/lang/Exception;
    .restart local v11       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_4
    :try_start_7
    const-string v18, "RemoteViewsAdapter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error inflating RemoteViews at position: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", using"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "loading view instead"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v13, 0x0

    .line 1011
    .local v13, loadingView:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v14

    .line 1012
    .local v14, metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1013
    :try_start_8
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    #calls: Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    invoke-static {v14, v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->access$1600(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v13

    .line 1014
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1017
    if-eqz v7, :cond_5

    :try_start_9
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    .line 1015
    :cond_5
    monitor-exit v19

    goto/16 :goto_2

    .line 1034
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #convertViewChild:Landroid/view/View;
    .end local v5           #convertViewTypeId:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #hasNewItems:Z
    .end local v8           #indexMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v9           #isConnected:Z
    .end local v10           #isInCache:Z
    .end local v11           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v13           #loadingView:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v14           #metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v16           #rv:Landroid/widget/RemoteViews;
    .end local v17           #typeId:I
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v18

    .line 1014
    .restart local v3       #context:Landroid/content/Context;
    .restart local v4       #convertViewChild:Landroid/view/View;
    .restart local v5       #convertViewTypeId:I
    .restart local v6       #e:Ljava/lang/Exception;
    .restart local v7       #hasNewItems:Z
    .restart local v8       #indexMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v9       #isConnected:Z
    .restart local v10       #isInCache:Z
    .restart local v11       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v13       #loadingView:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v14       #metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v16       #rv:Landroid/widget/RemoteViews;
    .restart local v17       #typeId:I
    :catchall_1
    move-exception v18

    :try_start_a
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v18
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1017
    .end local v6           #e:Ljava/lang/Exception;
    .end local v13           #loadingView:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v14           #metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    :catchall_2
    move-exception v18

    :goto_5
    if-eqz v7, :cond_6

    :try_start_c
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    :cond_6
    throw v18

    .line 1022
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #convertViewChild:Landroid/view/View;
    .end local v5           #convertViewTypeId:I
    .end local v8           #indexMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v11           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v16           #rv:Landroid/widget/RemoteViews;
    .end local v17           #typeId:I
    :cond_7
    const/4 v13, 0x0

    .line 1023
    .restart local v13       #loadingView:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v14

    .line 1024
    .restart local v14       #metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1025
    :try_start_d
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    #calls: Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    invoke-static {v14, v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->access$1600(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v13

    .line 1026
    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1028
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->add(ILandroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queueRequestedPositionToLoad(I)V

    .line 1030
    invoke-direct/range {p0 .. p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    .line 1032
    monitor-exit v19
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    .line 1026
    :catchall_3
    move-exception v18

    :try_start_f
    monitor-exit v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v18
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1017
    .end local v13           #loadingView:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v14           #metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v3       #context:Landroid/content/Context;
    .restart local v4       #convertViewChild:Landroid/view/View;
    .restart local v5       #convertViewTypeId:I
    .restart local v8       #indexMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v12       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v16       #rv:Landroid/widget/RemoteViews;
    .restart local v17       #typeId:I
    :catchall_4
    move-exception v18

    move-object v11, v12

    .end local v12           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v11       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_5

    .line 1004
    :catch_1
    move-exception v6

    goto/16 :goto_4

    .end local v3           #context:Landroid/content/Context;
    .end local v8           #indexMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v16           #rv:Landroid/widget/RemoteViews;
    .end local v17           #typeId:I
    :cond_8
    move-object v12, v11

    .end local v11           #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v12       #layout:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 1038
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1039
    .local v0, metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1040
    :try_start_0
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    monitor-exit v0

    return v1

    .line 1041
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 1141
    const/4 v0, 0x0

    .line 1142
    .local v0, result:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1152
    :goto_0
    return v0

    .line 1144
    :pswitch_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1145
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->unbind(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1147
    :cond_0
    const/4 v0, 0x1

    .line 1148
    goto :goto_0

    .line 1142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 2

    .prologue
    .line 1045
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1046
    .local v0, metaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1047
    :try_start_0
    iget-boolean v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    monitor-exit v0

    return v1

    .line 1048
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1052
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1113
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1117
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1118
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    if-eqz v0, :cond_0

    .line 1133
    :goto_0
    return-void

    .line 1122
    :cond_0
    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    .line 1123
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()Z

    goto :goto_0

    .line 1127
    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    new-instance v1, Landroid/widget/RemoteViewsAdapter$5;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$5;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setVisibleRangeHint(II)V
    .locals 0
    .parameter "lowerBound"
    .parameter "upperBound"

    .prologue
    .line 945
    iput p1, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    .line 946
    iput p2, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    .line 947
    return-void
.end method

.method superNotifyDataSetChanged()V
    .locals 0

    .prologue
    .line 1136
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1137
    return-void
.end method
