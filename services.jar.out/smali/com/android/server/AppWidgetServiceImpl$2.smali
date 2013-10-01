.class Lcom/android/server/AppWidgetServiceImpl$2;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetServiceImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Lcom/android/server/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/AppWidgetServiceImpl;

    iget-object v1, v0, Lcom/android/server/AppWidgetServiceImpl;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 922
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/AppWidgetServiceImpl;

    #calls: Lcom/android/server/AppWidgetServiceImpl;->ensureStateLoadedLocked()V
    invoke-static {v0}, Lcom/android/server/AppWidgetServiceImpl;->access$000(Lcom/android/server/AppWidgetServiceImpl;)V

    .line 923
    iget-object v0, p0, Lcom/android/server/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/AppWidgetServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/AppWidgetServiceImpl;->saveStateLocked()V

    .line 924
    monitor-exit v1

    .line 925
    return-void

    .line 924
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
