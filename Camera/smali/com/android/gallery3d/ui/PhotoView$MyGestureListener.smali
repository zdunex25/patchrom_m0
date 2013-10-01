.class Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private mAccScale:F

.field private mCanChangeMode:Z

.field private mDeltaY:I

.field private mDownInScrolling:Z

.field private mFirstScrollX:Z

.field private mHadFling:Z

.field private mIgnoreScalingGesture:Z

.field private mIgnoreSwipingGesture:Z

.field private mIgnoreUpEvent:Z

.field private mModeChanged:Z

.field private mScrolledAfterDown:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 1
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 939
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    return-void
.end method

.method private calculateDeltaY(F)I
    .locals 5
    .parameter "delta"

    .prologue
    const/high16 v4, 0x3f00

    .line 1057
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-float v2, p1, v4

    float-to-int v2, v2

    .line 1069
    :goto_0
    return v2

    .line 1061
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    .line 1062
    .local v1, size:I
    const v2, 0x3e19999a

    int-to-float v3, v1

    mul-float v0, v2, v3

    .line 1063
    .local v0, maxScrollDistance:F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 1064
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    move p1, v0

    .line 1069
    :goto_1
    add-float v2, p1, v4

    float-to-int v2, v2

    goto :goto_0

    .line 1064
    :cond_1
    neg-float p1, v0

    goto :goto_1

    .line 1066
    :cond_2
    int-to-float v2, v1

    div-float v2, p1, v2

    const v3, 0x3fc90fdb

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    mul-float p1, v0, v2

    goto :goto_1
.end method

.method private deleteAfterAnimation(I)V
    .locals 5
    .parameter "duration"

    .prologue
    .line 1123
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1124
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1125
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCommitDeleteImage()V

    .line 1126
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$3300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v4

    add-int/2addr v3, v4

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3602(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1127
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$376(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1128
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1129
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1130
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1131
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private flingImages(FF)Z
    .locals 12
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const v11, 0x7fffffff

    const/high16 v10, 0x3f00

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1086
    add-float v7, p1, v10

    float-to-int v5, v7

    .line 1087
    .local v5, vx:I
    add-float v7, p2, v10

    float-to-int v6, v7

    .line 1088
    .local v6, vy:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1089
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/android/gallery3d/ui/PositionController;->flingPage(II)Z

    move-result v9

    .line 1119
    :cond_0
    :goto_0
    return v9

    .line 1091
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v7, v7, v10

    if-lez v7, :cond_2

    .line 1092
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/gallery3d/ui/PositionController;->flingFilmX(I)Z

    move-result v9

    goto :goto_0

    .line 1096
    :cond_2
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$3300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v7

    if-eq v7, v11, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$3400(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1100
    const/16 v7, 0xfa0

    invoke-static {v7}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v4

    .line 1101
    .local v4, maxVelocity:I
    const/16 v7, 0x9c4

    invoke-static {v7}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    .line 1102
    .local v2, escapeVelocity:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v7

    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v10}, Lcom/android/gallery3d/ui/PhotoView;->access$3300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 1104
    .local v0, centerY:I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v2, :cond_6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v7, v10, :cond_6

    if-lez v6, :cond_4

    move v7, v8

    :goto_1
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    if-le v0, v10, :cond_5

    move v10, v8

    :goto_2
    if-ne v7, v10, :cond_6

    move v3, v8

    .line 1107
    .local v3, fastEnough:Z
    :goto_3
    if-eqz v3, :cond_0

    .line 1108
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1109
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v7

    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v10}, Lcom/android/gallery3d/ui/PhotoView;->access$3300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v10

    invoke-virtual {v7, v10, v6}, Lcom/android/gallery3d/ui/PositionController;->flingFilmY(II)I

    move-result v1

    .line 1110
    .local v1, duration:I
    if-ltz v1, :cond_0

    .line 1111
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v7}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v7

    if-gez v6, :cond_3

    move v9, v8

    :cond_3
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/ui/PositionController;->setPopFromTop(Z)V

    .line 1112
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->deleteAfterAnimation(I)V

    .line 1115
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v7, v11}, Lcom/android/gallery3d/ui/PhotoView;->access$3302(Lcom/android/gallery3d/ui/PhotoView;I)I

    move v9, v8

    .line 1116
    goto/16 :goto_0

    .end local v1           #duration:I
    .end local v3           #fastEnough:Z
    :cond_4
    move v7, v9

    .line 1104
    goto :goto_1

    :cond_5
    move v10, v9

    goto :goto_2

    :cond_6
    move v3, v9

    goto :goto_3
.end method

.method private startExtraScalingIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1202
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$700(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1205
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    .line 1206
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$702(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 1208
    :cond_0
    return-void
.end method

.method private stopExtraScalingIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1211
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$700(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 1213
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    .line 1214
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$702(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 1216
    :cond_0
    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1013
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v2, :cond_0

    move v2, v3

    .line 1025
    :goto_0
    return v2

    .line 1014
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 1015
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    .line 1016
    .local v0, controller:Lcom/android/gallery3d/ui/PositionController;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageScale()F

    move-result v1

    .line 1019
    .local v1, scale:F
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    .line 1020
    const/high16 v2, 0x3f40

    cmpg-float v2, v1, v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1021
    :cond_2
    const/high16 v2, 0x3f80

    const/high16 v4, 0x3fc0

    mul-float/2addr v4, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/gallery3d/ui/PositionController;->zoomIn(FFF)V

    :goto_1
    move v2, v3

    .line 1025
    goto :goto_0

    .line 1023
    :cond_3
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->resetToFullView()V

    goto :goto_1
.end method

.method public onDown(FF)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const v7, 0x7fffffff

    const/4 v6, 0x1

    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    .line 1220
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x4

    #calls: Lcom/android/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1600(Lcom/android/gallery3d/ui/PhotoView;I)V

    .line 1222
    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDeltaY:I

    .line 1223
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    .line 1225
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v2, :cond_0

    .line 1250
    :goto_0
    return-void

    .line 1227
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-static {v2, v6}, Lcom/android/gallery3d/ui/PhotoView;->access$376(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1229
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1230
    iput-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    .line 1231
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->stopScrolling()V

    .line 1235
    :goto_1
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mHadFling:Z

    .line 1236
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    .line 1237
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1238
    add-float v2, p1, v5

    float-to-int v0, v2

    .line 1239
    .local v0, xi:I
    add-float v2, p2, v5

    float-to-int v1, v2

    .line 1240
    .local v1, yi:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/android/gallery3d/ui/PositionController;->hitTest(II)I

    move-result v3

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3302(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1241
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1200(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1100(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    if-le v2, v3, :cond_3

    .line 1242
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v7}, Lcom/android/gallery3d/ui/PhotoView;->access$3302(Lcom/android/gallery3d/ui/PhotoView;I)I

    goto :goto_0

    .line 1233
    .end local v0           #xi:I
    .end local v1           #yi:I
    :cond_2
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    goto :goto_1

    .line 1244
    .restart local v0       #xi:I
    .restart local v1       #yi:I
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v2

    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$3300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isDeletable()Z

    move-result v2

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v3, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$3402(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    goto/16 :goto_0

    .line 1248
    .end local v0           #xi:I
    .end local v1           #yi:I
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v7}, Lcom/android/gallery3d/ui/PhotoView;->access$3302(Lcom/android/gallery3d/ui/PhotoView;I)I

    goto/16 :goto_0
.end method

.method public onFling(FF)Z
    .locals 2
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 1074
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return v1

    .line 1075
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->swipeImages(FF)Z
    invoke-static {v0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->access$3500(Lcom/android/gallery3d/ui/PhotoView;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1077
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    .line 1081
    :goto_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mHadFling:Z

    goto :goto_0

    .line 1079
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->flingImages(FF)Z

    goto :goto_1
.end method

.method public onScale(FFF)Z
    .locals 6
    .parameter "focusX"
    .parameter "focusY"
    .parameter "scale"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1153
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v4, :cond_1

    .line 1190
    :cond_0
    :goto_0
    return v3

    .line 1154
    :cond_1
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v4, :cond_0

    .line 1155
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v4, :cond_0

    .line 1156
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v3, v2

    goto :goto_0

    .line 1158
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v4

    invoke-virtual {v4, p3, p1, p2}, Lcom/android/gallery3d/ui/PositionController;->scaleBy(FFF)I

    move-result v1

    .line 1163
    .local v1, outOfRange:I
    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    mul-float/2addr v4, p3

    iput v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    .line 1164
    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    const v5, 0x3f7851ec

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_4

    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    const v5, 0x3f83d70a

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    :cond_4
    move v0, v3

    .line 1167
    .local v0, largeEnough:Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    .line 1168
    if-gez v1, :cond_5

    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    if-lez v1, :cond_9

    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1170
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    .line 1174
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lcom/android/gallery3d/ui/PhotoView;->access$372(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1175
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v5

    if-nez v5, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {v4, v2}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1179
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->onScaleEnd()V

    .line 1180
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    goto :goto_0

    .end local v0           #largeEnough:Z
    :cond_8
    move v0, v2

    .line 1164
    goto :goto_1

    .line 1185
    .restart local v0       #largeEnough:Z
    :cond_9
    if-eqz v1, :cond_a

    .line 1186
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->startExtraScalingIfNeeded()V

    goto :goto_0

    .line 1188
    :cond_a
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    goto :goto_0
.end method

.method public onScaleBegin(FF)Z
    .locals 3
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1136
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return v2

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    .line 1139
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/PositionController;->beginScale(FF)V

    .line 1145
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    .line 1147
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1145
    goto :goto_1
.end method

.method public onScaleEnd()V
    .locals 1

    .prologue
    .line 1195
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    .line 1199
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v0, :cond_0

    .line 1197
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->endScale()V

    goto :goto_0
.end method

.method public onScroll(FFFF)Z
    .locals 8
    .parameter "dx"
    .parameter "dy"
    .parameter "totalX"
    .parameter "totalY"

    .prologue
    const/high16 v7, 0x3f00

    const/4 v5, 0x1

    .line 1030
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v4, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return v5

    .line 1031
    :cond_1
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    if-nez v4, :cond_2

    .line 1032
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    .line 1033
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    .line 1036
    :cond_2
    neg-float v4, p1

    add-float/2addr v4, v7

    float-to-int v1, v4

    .line 1037
    .local v1, dxi:I
    neg-float v4, p2

    add-float/2addr v4, v7

    float-to-int v2, v4

    .line 1038
    .local v2, dyi:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1039
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-eqz v4, :cond_4

    .line 1040
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/ui/PositionController;->scrollFilmX(I)V

    goto :goto_0

    .line 1033
    .end local v1           #dxi:I
    .end local v2           #dyi:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1042
    .restart local v1       #dxi:I
    .restart local v2       #dyi:I
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$3300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v4

    const v6, 0x7fffffff

    if-eq v4, v6, :cond_0

    .line 1043
    invoke-direct {p0, p4}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->calculateDeltaY(F)I

    move-result v3

    .line 1044
    .local v3, newDeltaY:I
    iget v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDeltaY:I

    sub-int v0, v3, v4

    .line 1045
    .local v0, d:I
    if-eqz v0, :cond_0

    .line 1046
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v4

    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v6}, Lcom/android/gallery3d/ui/PhotoView;->access$3300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v6

    invoke-virtual {v4, v6, v0}, Lcom/android/gallery3d/ui/PositionController;->scrollFilmY(II)V

    .line 1047
    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDeltaY:I

    goto :goto_0

    .line 1051
    .end local v0           #d:I
    .end local v3           #newDeltaY:I
    :cond_5
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/android/gallery3d/ui/PositionController;->scrollPage(II)V

    goto :goto_0
.end method

.method public onSingleTapUp(FF)Z
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f00

    const/4 v8, 0x1

    .line 973
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-ge v5, v6, :cond_1

    .line 974
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mHolding:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return v8

    .line 981
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v6, -0x2

    invoke-static {v5, v6}, Lcom/android/gallery3d/ui/PhotoView;->access$372(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 983
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    if-nez v5, :cond_3

    .line 984
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    add-float v6, p1, v9

    float-to-int v6, v6

    add-float v7, p2, v9

    float-to-int v7, v7

    #calls: Lcom/android/gallery3d/ui/PhotoView;->switchToHitPicture(II)V
    invoke-static {v5, v6, v7}, Lcom/android/gallery3d/ui/PhotoView;->access$3200(Lcom/android/gallery3d/ui/PhotoView;II)V

    .line 989
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v5

    invoke-interface {v5, v10}, Lcom/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 990
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v4, 0x0

    .line 991
    .local v4, supported:I
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v4

    .line 992
    :cond_2
    const v5, 0x8000

    and-int/2addr v5, v4

    if-nez v5, :cond_3

    .line 993
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v5, v10}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 994
    iput-boolean v8, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto :goto_0

    .line 999
    .end local v1           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v4           #supported:I
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1001
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/gallery3d/ui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 1002
    .local v2, m:Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1003
    .local v0, inv:Landroid/graphics/Matrix;
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1004
    const/4 v5, 0x2

    new-array v3, v5, [F

    aput p1, v3, v10

    aput p2, v3, v8

    .line 1005
    .local v3, pts:[F
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1006
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v5

    aget v6, v3, v10

    add-float/2addr v6, v9

    float-to-int v6, v6

    aget v7, v3, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-interface {v5, v6, v7}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onUp()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f00

    const/4 v4, 0x0

    .line 1254
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v3, :cond_1

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v5, -0x2

    invoke-static {v3, v5}, Lcom/android/gallery3d/ui/PhotoView;->access$372(Lcom/android/gallery3d/ui/PhotoView;I)I

    .line 1257
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$400(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/EdgeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/EdgeView;->onRelease()V

    .line 1261
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    const v5, 0x7fffffff

    if-eq v3, v5, :cond_2

    .line 1263
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v3

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$3300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 1264
    .local v2, r:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    .line 1265
    .local v1, h:I
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, v1

    mul-float/2addr v5, v7

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x3ecccccd

    int-to-float v6, v1

    mul-float/2addr v5, v6

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    .line 1266
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v3

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v5}, Lcom/android/gallery3d/ui/PhotoView;->access$3300(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lcom/android/gallery3d/ui/PositionController;->flingFilmY(II)I

    move-result v0

    .line 1268
    .local v0, duration:I
    if-ltz v0, :cond_2

    .line 1269
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    int-to-float v6, v1

    mul-float/2addr v6, v7

    cmpg-float v3, v3, v6

    if-gez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/gallery3d/ui/PositionController;->setPopFromTop(Z)V

    .line 1270
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->deleteAfterAnimation(I)V

    .line 1275
    .end local v0           #duration:I
    .end local v1           #h:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_2
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    if-eqz v3, :cond_4

    .line 1276
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto/16 :goto_0

    .restart local v0       #duration:I
    .restart local v1       #h:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_3
    move v3, v4

    .line 1269
    goto :goto_1

    .line 1280
    .end local v0           #duration:I
    .end local v1           #h:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mHadFling:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->snapToNeighborImage()Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$3700(Lcom/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1282
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->snapback()V
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1500(Lcom/android/gallery3d/ui/PhotoView;)V

    goto/16 :goto_0
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1287
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    .line 1288
    return-void

    .line 1287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
