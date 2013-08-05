.class Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;
.super Ljava/lang/Object;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android/service/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceMutex"
.end annotation


# instance fields
.field private mSignal:Ljava/util/concurrent/Semaphore;

.field final synthetic this$0:Lcom/vipercn/viper4android/service/HeadsetService;


# direct methods
.method private constructor <init>(Lcom/vipercn/viper4android/service/HeadsetService;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;->mSignal:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vipercn/viper4android/service/HeadsetService;Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;)V

    return-void
.end method


# virtual methods
.method public acquire()Z
    .locals 2

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;->mSignal:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/4 v1, 0x1

    .line 52
    :goto_0
    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;->mSignal:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 59
    return-void
.end method
