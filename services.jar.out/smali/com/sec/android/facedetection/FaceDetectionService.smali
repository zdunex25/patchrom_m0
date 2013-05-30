.class public Lcom/sec/android/facedetection/FaceDetectionService;
.super Lcom/sec/android/facedetection/IFaceDetectionService$Stub;
.source "FaceDetectionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;
.implements Lcom/sec/android/seccamera/SecCamera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    }
.end annotation


# static fields
.field private static final DETECT_BLINK:Z = false

.field private static final FDS_DISABLE:Z = false

.field private static final MAX_RETRY:I = 0x2

.field private static final NO_TIMEOUT:Z = true

.field public static final START_CAMERA:I = 0x1

.field public static final START_FD_ONE_EYE:I = 0x3

.field public static final START_FD_TWO_EYE:I = 0x4

.field public static final STOP_CAMERA:I = 0x0

.field public static final STOP_FD:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field final callback:Ljava/util/concurrent/locks/Condition;

.field final complete:Ljava/util/concurrent/locks/Condition;

.field final lock:Ljava/util/concurrent/locks/Lock;

.field final lock2:Ljava/util/concurrent/locks/Lock;

.field private mCallbackThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field private mContext:Landroid/content/Context;

.field private mCurrentDeviceOrientation:I

.field private mDegreeOffset:I

.field private mFaces:[Lcom/sec/android/facedetection/SecFace;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastDeviceOrientation:I

.field private mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

.field private mNumOfListener:I

.field private mStatusService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 297
    invoke-direct {p0}, Lcom/sec/android/facedetection/IFaceDetectionService$Stub;-><init>()V

    .line 79
    const-string v1, "FaceDetectionService"

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->TAG:Ljava/lang/String;

    .line 105
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    .line 106
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    .line 107
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    .line 108
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->callback:Ljava/util/concurrent/locks/Condition;

    .line 298
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    .line 299
    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 300
    iput v3, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    .line 301
    iput-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    .line 303
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FaceDetection Handler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 304
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 306
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FaceDetection Callback Handler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCallbackThread:Landroid/os/HandlerThread;

    .line 307
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 309
    new-instance v1, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;-><init>(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/facedetection/FaceDetectionService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    .line 311
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    .line 312
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/sec/android/facedetection/FaceDetectionService$1;

    invoke-direct {v2, p0}, Lcom/sec/android/facedetection/FaceDetectionService$1;-><init>(Lcom/sec/android/facedetection/FaceDetectionService;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 318
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 319
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 320
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Fatal System Error!\nNow Dumping Log...\nDo not turn off!\nIt will take about 1 min."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 322
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 324
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "Error Dialog"

    invoke-virtual {v1, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 326
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandler:Landroid/os/Handler;

    .line 328
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 329
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "FaceDetectionService"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 330
    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mStatusService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 332
    const-string v1, "FaceDetectionService"

    const-string v2, "FaceDetectionService Started."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/seccamera/SecCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/facedetection/FaceDetectionService;Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCallbackThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/facedetection/FaceDetectionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mDegreeOffset:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/facedetection/FaceDetectionService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mDegreeOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/facedetection/FaceDetectionService;)Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/facedetection/FaceDetectionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private closeCamera()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V

    .line 389
    return-void
.end method

.method private declared-synchronized decreaseListener()V
    .locals 2

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    .line 410
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    if-nez v0, :cond_1

    .line 412
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->closeCamera()V

    .line 413
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->showIcon(Z)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 417
    const-string v0, "FaceDetectionService"

    const-string v1, "mWakeLock.release() in FD"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :cond_1
    monitor-exit p0

    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getFaceInfoInternal(Z)[Lcom/sec/android/facedetection/SecFace;
    .locals 1
    .parameter "needOneEye"

    .prologue
    const/4 v0, -0x1

    .line 451
    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->getFaceInfoInternal(ZII)[Lcom/sec/android/facedetection/SecFace;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getFaceInfoInternal(ZII)[Lcom/sec/android/facedetection/SecFace;
    .locals 9
    .parameter "needOneEye"
    .parameter "last"
    .parameter "current"

    .prologue
    const/4 v8, 0x2

    .line 456
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 459
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [Lcom/sec/android/facedetection/SecFace;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v3

    .line 485
    :cond_2
    :try_start_1
    iput p2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mLastDeviceOrientation:I

    .line 486
    iput p3, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCurrentDeviceOrientation:I

    .line 488
    if-eqz p1, :cond_5

    .line 489
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V

    .line 493
    :goto_1
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 496
    const-string v4, "FaceDetectionService"

    const-string v5, "WAIT FOR CALLBACK"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    const/4 v2, 0x2

    .line 499
    .local v2, iRetryCount:I
    const/4 v1, 0x0

    .line 501
    .local v1, iBlinkCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v2, :cond_7

    .line 504
    const/4 v4, 0x0

    :try_start_2
    iput-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    .line 505
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->callback:Ljava/util/concurrent/locks/Condition;

    const-wide/32 v5, 0x23c34600

    invoke-interface {v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    const-string v4, "FaceDetectionService"

    const-string v5, "No Callback!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 511
    :cond_3
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    array-length v4, v4

    if-lez v4, :cond_9

    .line 513
    const-string v4, "FaceDetectionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFaces[0].blink: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Lcom/sec/android/facedetection/SecFace;->score:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Lcom/sec/android/facedetection/SecFace;->score:I

    if-eqz v4, :cond_6

    .line 517
    add-int/lit8 v1, v1, 0x1

    .line 501
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 491
    .end local v0           #i:I
    .end local v1           #iBlinkCount:I
    .end local v2           #iRetryCount:I
    :cond_5
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 456
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 519
    .restart local v0       #i:I
    .restart local v1       #iBlinkCount:I
    .restart local v2       #iRetryCount:I
    :cond_6
    if-ne v2, v8, :cond_4

    .line 523
    :cond_7
    :try_start_4
    const-string v4, "FaceDetectionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DONE! BlinkCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Retry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v3, 0x0

    .line 527
    .local v3, ret:[Lcom/sec/android/facedetection/SecFace;
    if-ne v2, v8, :cond_b

    .line 529
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    if-nez v4, :cond_a

    .line 531
    const/4 v4, 0x0

    new-array v3, v4, [Lcom/sec/android/facedetection/SecFace;

    .line 549
    :cond_8
    :goto_5
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V

    .line 551
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 554
    if-eqz v3, :cond_d

    array-length v4, v3

    if-lez v4, :cond_d

    .line 556
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "faceservice_disabled"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 563
    :goto_6
    if-nez v3, :cond_1

    const/4 v4, 0x0

    new-array v3, v4, [Lcom/sec/android/facedetection/SecFace;

    goto/16 :goto_0

    .line 521
    .end local v3           #ret:[Lcom/sec/android/facedetection/SecFace;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 535
    .restart local v3       #ret:[Lcom/sec/android/facedetection/SecFace;
    :cond_a
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    array-length v4, v4

    new-array v3, v4, [Lcom/sec/android/facedetection/SecFace;

    .line 536
    const/4 v0, 0x0

    :goto_7
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    array-length v4, v4

    if-ge v0, v4, :cond_8

    new-instance v4, Lcom/sec/android/facedetection/SecFace;

    iget-object v5, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    aget-object v5, v5, v0

    invoke-direct {v4, v5}, Lcom/sec/android/facedetection/SecFace;-><init>(Lcom/sec/android/facedetection/SecFace;)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 539
    :cond_b
    const/4 v4, 0x5

    if-lt v1, v4, :cond_c

    .line 541
    const/4 v4, 0x0

    new-array v3, v4, [Lcom/sec/android/facedetection/SecFace;

    goto :goto_5

    .line 545
    :cond_c
    const/4 v4, 0x1

    new-array v3, v4, [Lcom/sec/android/facedetection/SecFace;

    .line 546
    const/4 v4, 0x0

    new-instance v5, Lcom/sec/android/facedetection/SecFace;

    invoke-direct {v5}, Lcom/sec/android/facedetection/SecFace;-><init>()V

    aput-object v5, v3, v4

    goto :goto_5

    .line 560
    :cond_d
    iget-object v4, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "faceservice_failed"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 507
    .end local v3           #ret:[Lcom/sec/android/facedetection/SecFace;
    :catch_0
    move-exception v4

    goto/16 :goto_3
.end method

.method private declared-synchronized increaseListener()V
    .locals 3

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    if-nez v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 397
    const-string v0, "FaceDetectionService"

    const-string v1, "mWakeLock.acquire() in FD"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->showIcon(Z)V

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "faceservice_enabled"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 402
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->openCamera()V

    .line 404
    :cond_2
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    monitor-exit p0

    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private openCamera()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    .line 382
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->sendMessageAndWait(I)V

    .line 383
    return-void
.end method

.method private sendMessageAndWait(I)V
    .locals 3
    .parameter "what"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 348
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->sendEmptyMessage(I)Z

    .line 349
    const-string v0, "FaceDetectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->complete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 375
    const-string v0, "FaceDetectionService"

    const-string v1, "DONE!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 377
    return-void
.end method

.method private showErrorPopup()V
    .locals 2

    .prologue
    .line 606
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/facedetection/FaceDetectionService$2;

    invoke-direct {v1, p0}, Lcom/sec/android/facedetection/FaceDetectionService$2;-><init>(Lcom/sec/android/facedetection/FaceDetectionService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 646
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 647
    return-void
.end method

.method private showIcon(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mStatusService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mStatusService:Lcom/android/internal/statusbar/IStatusBarService;

    const-string v1, "face"

    invoke-interface {v0, v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 579
    const-string v0, "FaceDetectionService"

    const-string v1, "FaceDetectionClient died!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->decreaseListener()V

    .line 581
    return-void
.end method

.method public disable(Lcom/sec/android/facedetection/IFaceDetectionClient;)V
    .locals 3
    .parameter "client"

    .prologue
    .line 438
    const-string v1, "FaceDetectionService"

    const-string v2, "disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    :goto_0
    return-void

    .line 442
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/sec/android/facedetection/IFaceDetectionClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->decreaseListener()V

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, "FaceDetectionService"

    const-string v2, "unlinkToDeath failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 585
    const-string v0, "FaceDetectionService"

    const-string v1, "DUMP Face detection service."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump ThemeService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    :goto_0
    return-void

    .line 596
    :cond_0
    const-string v0, "FaceDetectionService is up and running!"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " # of clients: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 599
    const-string v0, " Camera is opened"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_1
    const-string v0, " Camera is not opened"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enable(Lcom/sec/android/facedetection/IFaceDetectionClient;)V
    .locals 3
    .parameter "client"

    .prologue
    .line 425
    const-string v1, "FaceDetectionService"

    const-string v2, "enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    :goto_0
    return-void

    .line 429
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/sec/android/facedetection/IFaceDetectionClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/facedetection/FaceDetectionService;->increaseListener()V

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FaceDetectionService"

    const-string v2, "linkToDeath failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getFaceInfo()[Lcom/sec/android/facedetection/SecFace;
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/facedetection/FaceDetectionService;->getFaceInfoInternal(Z)[Lcom/sec/android/facedetection/SecFace;

    move-result-object v0

    return-object v0
.end method

.method public getFaceInfoHint(II)[Lcom/sec/android/facedetection/SecFace;
    .locals 1
    .parameter "last"
    .parameter "current"

    .prologue
    .line 575
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/facedetection/FaceDetectionService;->getFaceInfoInternal(ZII)[Lcom/sec/android/facedetection/SecFace;

    move-result-object v0

    return-object v0
.end method

.method public onError(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 4
    .parameter "error"
    .parameter "camera"

    .prologue
    const/4 v3, 0x1

    .line 287
    const-string v0, "FaceDetectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 289
    iget v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mNumOfListener:I

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "FaceDetectionService"

    const-string v1, "Whatever happened to camera service, I will try to re-open camera! I have a client waiting for my service."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->removeMessages(I)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mMainHandler:Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/facedetection/FaceDetectionService$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 295
    :cond_0
    return-void
.end method

.method public onFaceDetection([Lcom/sec/android/seccamera/SecCamera$Face;Lcom/sec/android/seccamera/SecCamera;)V
    .locals 9
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 255
    if-nez p1, :cond_0

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->callback:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 282
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->lock2:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 283
    return-void

    .line 261
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/sec/android/facedetection/SecFace;

    iput-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    .line 263
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, p1

    if-ge v7, v0, :cond_1

    .line 266
    iget-object v8, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    new-instance v0, Lcom/sec/android/facedetection/SecFace;

    aget-object v1, p1, v7

    iget-object v1, v1, Lcom/sec/android/seccamera/SecCamera$Face;->rect:Landroid/graphics/Rect;

    aget-object v2, p1, v7

    iget v2, v2, Lcom/sec/android/seccamera/SecCamera$Face;->id:I

    aget-object v3, p1, v7

    iget v3, v3, Lcom/sec/android/seccamera/SecCamera$Face;->score:I

    aget-object v4, p1, v7

    iget-object v4, v4, Lcom/sec/android/seccamera/SecCamera$Face;->leftEye:Landroid/graphics/Point;

    aget-object v5, p1, v7

    iget-object v5, v5, Lcom/sec/android/seccamera/SecCamera$Face;->rightEye:Landroid/graphics/Point;

    aget-object v6, p1, v7

    iget-object v6, v6, Lcom/sec/android/seccamera/SecCamera$Face;->mouth:Landroid/graphics/Point;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/facedetection/SecFace;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    aput-object v0, v8, v7

    .line 263
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 277
    :cond_1
    const-string v0, "FaceDetectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFaceDetection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionService;->mFaces:[Lcom/sec/android/facedetection/SecFace;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
