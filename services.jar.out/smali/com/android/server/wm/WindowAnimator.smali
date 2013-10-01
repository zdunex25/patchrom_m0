.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;,
        Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;
    }
.end annotation


# static fields
.field static final KEYGUARD_ANIMATING_IN:I = 0x1

.field static final KEYGUARD_ANIMATING_OUT:I = 0x3

.field static final KEYGUARD_NOT_SHOWN:I = 0x0

.field static final KEYGUARD_SHOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"

.field static final WALLPAPER_ACTION_PENDING:I = 0x1


# instance fields
.field mAboveUniverseLayer:I

.field mAdjResult:I

.field final mAnimToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationRunnable:Ljava/lang/Runnable;

.field mAppAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentTime:J

.field mDh:I

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mDw:I

.field mForceHiding:I

.field mInitialized:Z

.field mInnerDh:I

.field mInnerDw:I

.field mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mPendingActions:I

.field mPendingLayoutChanges:Landroid/util/SparseIntArray;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

.field mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field mWpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    .line 73
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 75
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    .line 76
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    .line 78
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 86
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 87
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 88
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 89
    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

    invoke-direct {v0}, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

    .line 105
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 112
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 125
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 126
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 127
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 129
    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->copyLayoutToAnimParamsLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->animateLocked()V

    return-void
.end method

.method private animateLocked()V
    .locals 20

    .prologue
    .line 640
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    if-nez v15, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->clear()V

    .line 645
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 646
    const/16 v15, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 647
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 648
    .local v13, wasAnimating:Z
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 655
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 656
    invoke-static {}, Landroid/view/Surface;->setAnimationTransaction()V

    .line 658
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked()V

    .line 660
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 661
    .local v11, numDisplays:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v11, :cond_7

    .line 662
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 663
    .local v7, displayId:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 665
    .local v6, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v12, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 667
    .local v12, screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 668
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide v0, v15

    invoke-virtual {v12, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 669
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 679
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->performAnimationsLocked(I)V

    .line 681
    iget-object v14, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    .line 682
    .local v14, winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    invoke-virtual {v14}, Lcom/android/server/wm/WinAnimatorList;->size()I

    move-result v3

    .line 683
    .local v3, N:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_3
    if-ge v10, v3, :cond_6

    .line 684
    invoke-virtual {v14, v10}, Lcom/android/server/wm/WinAnimatorList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowStateAnimator;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 683
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 671
    .end local v3           #N:I
    .end local v10           #j:I
    .end local v14           #winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 672
    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 673
    const/4 v15, 0x0

    iput-object v15, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 714
    .end local v6           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7           #displayId:I
    .end local v9           #i:I
    .end local v11           #numDisplays:I
    .end local v12           #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    :catch_0
    move-exception v8

    .line 715
    .local v8, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v15, "WindowAnimator"

    const-string v16, "Unhandled exception in Window Manager"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    .end local v8           #e:Ljava/lang/RuntimeException;
    :cond_4
    :goto_4
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 722
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    .restart local v9       #i:I
    :goto_5
    if-ltz v9, :cond_d

    .line 723
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    and-int/lit8 v15, v15, 0x4

    if-eqz v15, :cond_5

    .line 725
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    or-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    .line 722
    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 661
    .restart local v3       #N:I
    .restart local v6       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v7       #displayId:I
    .restart local v10       #j:I
    .restart local v11       #numDisplays:I
    .restart local v12       #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v14       #winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 688
    .end local v3           #N:I
    .end local v6           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7           #displayId:I
    .end local v10           #j:I
    .end local v12           #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v14           #winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    :cond_7
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked()V

    .line 690
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v11, :cond_c

    .line 691
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 692
    .restart local v7       #displayId:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 694
    .restart local v6       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v12, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 696
    .restart local v12       #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v12, :cond_8

    .line 697
    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    .line 700
    :cond_8
    iget-object v5, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    .line 701
    .local v5, dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    iget-object v4, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 702
    .local v4, dimAnimator:Lcom/android/server/wm/DimAnimator;
    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    .line 703
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v15, v5, v0, v1}, Lcom/android/server/wm/DimAnimator;->updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/DimAnimator$Parameters;J)V

    .line 705
    :cond_9
    if-eqz v4, :cond_a

    iget-boolean v15, v4, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-eqz v15, :cond_a

    .line 706
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowAnimator;->isDimmingLocked(I)Z

    move-result v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v15

    if-nez v15, :cond_b

    const/4 v15, 0x1

    :goto_7
    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v4, v0, v1, v2, v15}, Lcom/android/server/wm/DimAnimator;->updateSurface(ZJZ)Z

    move-result v15

    or-int v15, v15, v16

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 690
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 706
    :cond_b
    const/4 v15, 0x0

    goto :goto_7

    .line 711
    .end local v4           #dimAnimator:Lcom/android/server/wm/DimAnimator;
    .end local v5           #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .end local v6           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7           #displayId:I
    .end local v12           #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v15, :cond_4

    .line 712
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v15}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 717
    .end local v9           #i:I
    .end local v11           #numDisplays:I
    :catchall_0
    move-exception v15

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v15

    .line 729
    .restart local v9       #i:I
    :cond_d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    if-lez v15, :cond_f

    .line 730
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->updateAnimToLayoutLocked()V

    .line 733
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-eqz v15, :cond_10

    .line 734
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mLayoutToAnim:Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 735
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 736
    monitor-exit v16

    goto/16 :goto_0

    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v15

    .line 737
    :cond_10
    if-eqz v13, :cond_0

    .line 738
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    goto/16 :goto_0
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .locals 2
    .parameter "bulkUpdateParams"

    .prologue
    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 773
    .local v0, builder:Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 774
    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 777
    const-string v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 780
    const-string v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 783
    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 786
    const-string v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private copyLayoutToAnimParamsLocked()V
    .locals 17

    .prologue
    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v13, Lcom/android/server/wm/WindowManagerService;->mLayoutToAnim:Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;

    .line 190
    .local v8, layoutToAnim:Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;
    monitor-enter v8

    .line 191
    const/4 v13, 0x0

    :try_start_0
    iput-boolean v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mAnimationScheduled:Z

    .line 193
    iget-boolean v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mParamsModified:Z

    if-nez v13, :cond_0

    .line 194
    monitor-exit v8

    .line 261
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v13, 0x0

    iput-boolean v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mParamsModified:Z

    .line 198
    iget-wide v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mChanges:J

    const-wide/16 v15, 0x1

    and-long/2addr v13, v15

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_1

    .line 199
    iget-wide v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mChanges:J

    const-wide/16 v15, -0x2

    and-long/2addr v13, v15

    iput-wide v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mChanges:J

    .line 200
    new-instance v13, Ljava/util/ArrayList;

    iget-object v14, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 212
    :cond_1
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v13, :cond_4

    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 216
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 217
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 221
    .local v10, numDisplays:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v10, :cond_9

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 223
    .local v5, displayId:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 225
    .local v4, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v13}, Lcom/android/server/wm/WinAnimatorList;->clear()V

    .line 226
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mWinAnimatorLists:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WinAnimatorList;

    .line 227
    .local v12, winAnimators:Lcom/android/server/wm/WinAnimatorList;
    if-eqz v12, :cond_2

    .line 228
    iget-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v13, v12}, Lcom/android/server/wm/WinAnimatorList;->addAll(Ljava/util/Collection;)Z

    .line 231
    :cond_2
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mDimParams:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DimAnimator$Parameters;

    .line 232
    .local v3, dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    if-nez v3, :cond_6

    .line 233
    const/4 v13, 0x0

    iput-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    .line 221
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 213
    .end local v3           #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .end local v4           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v5           #displayId:I
    .end local v7           #i:I
    .end local v10           #numDisplays:I
    .end local v12           #winAnimators:Lcom/android/server/wm/WinAnimatorList;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v13, :cond_5

    const/4 v13, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v13, v13, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto :goto_1

    .line 235
    .restart local v3       #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .restart local v4       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v5       #displayId:I
    .restart local v7       #i:I
    .restart local v10       #numDisplays:I
    .restart local v12       #winAnimators:Lcom/android/server/wm/WinAnimatorList;
    :cond_6
    iget-object v9, v3, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 238
    .local v9, newWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-nez v13, :cond_8

    const/4 v6, 0x0

    .line 243
    .local v6, existingDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :goto_4
    iget-boolean v13, v9, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v13, :cond_3

    if-eqz v6, :cond_7

    iget-boolean v13, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v13, :cond_7

    iget v13, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v14, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v13, v14, :cond_3

    .line 246
    :cond_7
    new-instance v13, Lcom/android/server/wm/DimAnimator$Parameters;

    invoke-direct {v13, v3}, Lcom/android/server/wm/DimAnimator$Parameters;-><init>(Lcom/android/server/wm/DimAnimator$Parameters;)V

    iput-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    goto :goto_3

    .line 260
    .end local v3           #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .end local v4           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v5           #displayId:I
    .end local v6           #existingDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    .end local v7           #i:I
    .end local v9           #newWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    .end local v10           #numDisplays:I
    .end local v12           #winAnimators:Lcom/android/server/wm/WinAnimatorList;
    :catchall_0
    move-exception v13

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 238
    .restart local v3       #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .restart local v4       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v5       #displayId:I
    .restart local v7       #i:I
    .restart local v9       #newWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    .restart local v10       #numDisplays:I
    .restart local v12       #winAnimators:Lcom/android/server/wm/WinAnimatorList;
    :cond_8
    :try_start_1
    iget-object v13, v4, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    iget-object v6, v13, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    goto :goto_4

    .line 251
    .end local v3           #dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    .end local v4           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v5           #displayId:I
    .end local v9           #newWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    .end local v12           #winAnimators:Lcom/android/server/wm/WinAnimatorList;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 252
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mAppWindowAnimParams:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 253
    .local v1, N:I
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v1, :cond_a

    .line 254
    iget-object v13, v8, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mAppWindowAnimParams:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;

    .line 255
    .local v11, params:Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;
    iget-object v2, v11, Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 256
    .local v2, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v13, v2, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 257
    iget-object v13, v2, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    iget-object v14, v11, Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;->mWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 260
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v11           #params:Lcom/android/server/wm/WindowManagerService$AppWindowAnimParams;
    :cond_a
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private forceHidingToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    packed-switch v0, :pswitch_data_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEYGUARD STATE UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 116
    :pswitch_0
    const-string v0, "KEYGUARD_NOT_SHOWN"

    goto :goto_0

    .line 117
    :pswitch_1
    const-string v0, "KEYGUARD_ANIMATING_IN"

    goto :goto_0

    .line 118
    :pswitch_2
    const-string v0, "KEYGUARD_SHOWN"

    goto :goto_0

    .line 119
    :pswitch_3
    const-string v0, "KEYGUARD_ANIMATING_OUT"

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .locals 2
    .parameter "displayId"

    .prologue
    .line 939
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 940
    .local v0, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_0

    .line 941
    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .end local v0           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;I)V

    .line 942
    .restart local v0       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 944
    :cond_0
    return-object v0
.end method

.method private performAnimationsLocked(I)V
    .locals 0
    .parameter "displayId"

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    .line 634
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    .line 635
    return-void
.end method

.method private testTokenMayBeDrawnLocked()V
    .locals 8

    .prologue
    .line 596
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 597
    .local v0, NT:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 598
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowAnimator;

    .line 599
    .local v2, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v4, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 600
    .local v4, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 601
    .local v1, allDrawn:Z
    iget-boolean v5, v2, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v1, v5, :cond_0

    .line 602
    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 603
    if-eqz v1, :cond_0

    .line 606
    iget-boolean v5, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v5, :cond_1

    .line 607
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    .line 608
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 614
    const/4 v5, 0x4

    const-string v6, "testTokenMayBeDrawnLocked: freezingScreen"

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 597
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 618
    :cond_1
    const/16 v5, 0x8

    const-string v6, "testTokenMayBeDrawnLocked"

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 623
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 624
    iget-boolean v5, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_1

    .line 630
    .end local v1           #allDrawn:Z
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v4           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    return-void
.end method

.method private updateAppWindowsLocked()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 309
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 310
    .local v0, NAT:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 311
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowAnimator;

    .line 312
    .local v2, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v5, v8, :cond_1

    move v4, v6

    .line 314
    .local v4, wasAnimating:Z
    :goto_1
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    iget v10, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {v2, v8, v9, v5, v10}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 315
    iput-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 310
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4           #wasAnimating:Z
    :cond_1
    move v4, v7

    .line 312
    goto :goto_1

    .line 316
    .restart local v4       #wasAnimating:Z
    :cond_2
    if-eqz v4, :cond_0

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appToken "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " done"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v11, v5}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_2

    .line 325
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v4           #wasAnimating:Z
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 326
    .local v1, NEAT:I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_7

    .line 327
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 328
    .restart local v2       #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_5

    iget-object v5, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v5, v8, :cond_5

    move v4, v6

    .line 330
    .restart local v4       #wasAnimating:Z
    :goto_4
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    iget v10, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {v2, v8, v9, v5, v10}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 331
    iput-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 326
    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v4           #wasAnimating:Z
    :cond_5
    move v4, v7

    .line 328
    goto :goto_4

    .line 332
    .restart local v4       #wasAnimating:Z
    :cond_6
    if-eqz v4, :cond_4

    .line 334
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exiting appToken "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " done"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v11, v5}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_5

    .line 340
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v4           #wasAnimating:Z
    :cond_7
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .locals 22
    .parameter "displayId"

    .prologue
    .line 494
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v10

    .line 496
    .local v10, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v15, v10, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    .line 497
    .local v15, winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    const/16 v16, 0x0

    .line 498
    .local v16, windowAnimationBackground:Lcom/android/server/wm/WindowStateAnimator;
    const/16 v17, 0x0

    .line 499
    .local v17, windowAnimationBackgroundColor:I
    const/4 v9, 0x0

    .line 500
    .local v9, detachedWallpaper:Lcom/android/server/wm/WindowState;
    iget-object v0, v10, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    move-object/from16 v18, v0

    .line 503
    .local v18, windowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;
    invoke-virtual {v15}, Lcom/android/server/wm/WinAnimatorList;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    .local v12, i:I
    :goto_0
    if-ltz v12, :cond_8

    .line 504
    invoke-virtual {v15, v12}, Lcom/android/server/wm/WinAnimatorList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowStateAnimator;

    .line 505
    .local v14, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-object v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 503
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 509
    :cond_1
    iget v11, v14, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 510
    .local v11, flags:I
    iget-object v13, v14, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 515
    .local v13, win:Lcom/android/server/wm/WindowState;
    iget-boolean v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 516
    iget-object v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 517
    const/high16 v19, 0x10

    and-int v19, v19, v11

    if-eqz v19, :cond_2

    iget-object v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 519
    move-object v9, v13

    .line 521
    :cond_2
    iget-object v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v8

    .line 522
    .local v8, backgroundColor:I
    if-eqz v8, :cond_4

    .line 523
    if-eqz v16, :cond_3

    iget v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 525
    :cond_3
    move-object/from16 v16, v14

    .line 526
    move/from16 v17, v8

    .line 530
    .end local v8           #backgroundColor:I
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 536
    :cond_5
    iget-object v7, v14, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 537
    .local v7, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    iget-boolean v0, v7, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 539
    const/high16 v19, 0x10

    and-int v19, v19, v11

    if-eqz v19, :cond_6

    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 541
    move-object v9, v13

    .line 544
    :cond_6
    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v8

    .line 545
    .restart local v8       #backgroundColor:I
    if-eqz v8, :cond_0

    .line 546
    if-eqz v16, :cond_7

    iget v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 548
    :cond_7
    move-object/from16 v16, v14

    .line 549
    move/from16 v17, v8

    goto/16 :goto_1

    .line 555
    .end local v7           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v8           #backgroundColor:I
    .end local v11           #flags:I
    .end local v13           #win:Lcom/android/server/wm/WindowState;
    .end local v14           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v9, :cond_9

    .line 559
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 560
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 563
    :cond_9
    if-eqz v17, :cond_e

    .line 567
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 568
    .local v6, animLayer:I
    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 569
    .restart local v13       #win:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v13, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v0, v13, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v0, v13, :cond_b

    .line 571
    :cond_a
    invoke-virtual {v15}, Lcom/android/server/wm/WinAnimatorList;->size()I

    move-result v5

    .line 572
    .local v5, N:I
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v5, :cond_b

    .line 573
    invoke-virtual {v15, v12}, Lcom/android/server/wm/WinAnimatorList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowStateAnimator;

    .line 574
    .restart local v14       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v0, v14, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 575
    iget v6, v14, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 581
    .end local v5           #N:I
    .end local v14           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_b
    if-eqz v18, :cond_c

    .line 582
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    move/from16 v20, v0

    add-int/lit8 v21, v6, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/DimSurface;->show(IIII)V

    .line 591
    .end local v6           #animLayer:I
    .end local v13           #win:Lcom/android/server/wm/WindowState;
    :cond_c
    :goto_3
    return-void

    .line 572
    .restart local v5       #N:I
    .restart local v6       #animLayer:I
    .restart local v13       #win:Lcom/android/server/wm/WindowState;
    .restart local v14       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 587
    .end local v5           #N:I
    .end local v6           #animLayer:I
    .end local v13           #win:Lcom/android/server/wm/WindowState;
    .end local v14           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_e
    if-eqz v18, :cond_c

    .line 588
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/DimSurface;->hide()V

    goto :goto_3
.end method

.method private updateWindowsLocked(I)V
    .locals 21
    .parameter "displayId"

    .prologue
    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 345
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    move-object/from16 v16, v0

    .line 347
    .local v16, winAnimatorList:Lcom/android/server/wm/WinAnimatorList;
    const/4 v11, 0x0

    .line 348
    .local v11, unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/4 v12, 0x0

    .line 349
    .local v12, wallpaperInUnForceHiding:Z
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 351
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WinAnimatorList;->size()I

    move-result v17

    add-int/lit8 v9, v17, -0x1

    .local v9, i:I
    :goto_0
    if-ltz v9, :cond_12

    .line 352
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WinAnimatorList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowStateAnimator;

    .line 353
    .local v15, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-object v14, v15, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 354
    .local v14, win:Lcom/android/server/wm/WindowState;
    iget v7, v15, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 356
    .local v7, flags:I
    iget-object v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 357
    iget-boolean v13, v15, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    .line 358
    .local v13, wasAnimating:Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v10

    .line 365
    .local v10, nowAnimating:Z
    if-eqz v13, :cond_0

    iget-boolean v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v0, v14, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 367
    const/16 v17, 0x0

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const-string v18, "updateWindowsAndWallpaperLocked 2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseIntArray;->get(I)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 375
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v14, v1}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 376
    if-nez v13, :cond_1

    if-eqz v10, :cond_1

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 381
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const-string v18, "updateWindowsAndWallpaperLocked 3"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 389
    :cond_1
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 390
    if-eqz v10, :cond_8

    .line 391
    iget-boolean v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 392
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 454
    .end local v10           #nowAnimating:Z
    .end local v13           #wasAnimating:Z
    :cond_2
    :goto_1
    iget-object v5, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 455
    .local v5, atoken:Lcom/android/server/wm/AppWindowToken;
    iget v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 456
    if-eqz v5, :cond_3

    iget-boolean v0, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 457
    :cond_3
    invoke-virtual {v15}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const-string v18, "updateWindowsAndWallpaperLocked 5"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 467
    :cond_4
    iget-object v4, v15, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 468
    .local v4, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v4, :cond_6

    iget-object v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/Surface;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 469
    iget v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 470
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 471
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 473
    :cond_5
    iget v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move/from16 v17, v0

    iget v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 474
    iget v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 351
    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0

    .line 394
    .end local v4           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v5           #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v10       #nowAnimating:Z
    .restart local v13       #wasAnimating:Z
    :cond_7
    const/16 v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_1

    .line 397
    :cond_8
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_1

    .line 409
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v14, v1}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 410
    iget v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    move/from16 v17, v0

    const/high16 v18, 0x8

    and-int v17, v17, v18

    if-nez v17, :cond_d

    const/4 v8, 0x1

    .line 413
    .local v8, hideWhenLocked:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    invoke-virtual {v15}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v17

    if-eqz v17, :cond_b

    if-nez v8, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    if-eqz v8, :cond_e

    .line 416
    :cond_b
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v6

    .line 442
    .local v6, changed:Z
    :cond_c
    :goto_3
    if-eqz v6, :cond_2

    const/high16 v17, 0x10

    and-int v17, v17, v7

    if-eqz v17, :cond_2

    .line 443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 444
    const/16 v17, 0x0

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const-string v18, "updateWindowsAndWallpaperLocked 4"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseIntArray;->get(I)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 410
    .end local v6           #changed:Z
    .end local v8           #hideWhenLocked:Z
    :cond_d
    const/4 v8, 0x0

    goto :goto_2

    .line 420
    .restart local v8       #hideWhenLocked:Z
    :cond_e
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v6

    .line 423
    .restart local v6       #changed:Z
    if-eqz v6, :cond_c

    .line 424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x4

    if-eqz v17, :cond_10

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 426
    if-nez v11, :cond_f

    .line 427
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .restart local v11       #unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    :cond_f
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    const/high16 v17, 0x10

    and-int v17, v17, v7

    if-eqz v17, :cond_10

    .line 431
    const/4 v12, 0x1

    .line 434
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v17, v0

    iget v0, v14, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 438
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_3

    .line 481
    .end local v6           #changed:Z
    .end local v7           #flags:I
    .end local v8           #hideWhenLocked:Z
    .end local v10           #nowAnimating:Z
    .end local v13           #wasAnimating:Z
    .end local v14           #win:Lcom/android/server/wm/WindowState;
    .end local v15           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_12
    if-eqz v11, :cond_14

    .line 482
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v9, v17, -0x1

    :goto_4
    if-ltz v9, :cond_14

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v3

    .line 484
    .local v3, a:Landroid/view/animation/Animation;
    if-eqz v3, :cond_13

    .line 485
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowStateAnimator;

    .line 486
    .restart local v15       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v15, v3}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 487
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 482
    .end local v15           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_13
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 491
    .end local v3           #a:Landroid/view/animation/Animation;
    :cond_14
    return-void
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1
    .parameter "displayId"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 147
    if-nez p1, :cond_0

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 150
    :cond_0
    return-void
.end method

.method clearPendingActions()V
    .locals 1

    .prologue
    .line 912
    monitor-enter p0

    .line 913
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    .line 914
    monitor-exit p0

    .line 915
    return-void

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 11
    .parameter "pw"
    .parameter "prefix"
    .parameter "dumpAll"

    .prologue
    .line 792
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 793
    .local v5, subPrefix:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 795
    .local v6, subSubPrefix:Ljava/lang/String;
    const/4 v4, 0x0

    .line 796
    .local v4, needSep:Z
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 797
    const/4 v4, 0x1

    .line 798
    const-string v9, "  App Animators:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 800
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mAppAnimators:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowAnimator;

    .line 801
    .local v0, anim:Lcom/android/server/wm/AppWindowAnimator;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "App Animator #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 802
    const/16 v9, 0x20

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 803
    if-eqz p3, :cond_0

    .line 804
    const/16 v9, 0x3a

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(C)V

    .line 805
    invoke-virtual {v0, p1, v5, p3}, Lcom/android/server/wm/AppWindowAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 799
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 807
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 811
    .end local v0           #anim:Lcom/android/server/wm/AppWindowAnimator;
    .end local v2           #i:I
    :cond_1
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 812
    if-eqz v4, :cond_2

    .line 813
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 815
    :cond_2
    const/4 v4, 0x1

    .line 816
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "Wallpaper tokens:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .restart local v2       #i:I
    :goto_2
    if-ltz v2, :cond_4

    .line 818
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .line 819
    .local v7, token:Lcom/android/server/wm/WindowToken;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "Wallpaper #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 820
    const/16 v9, 0x20

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 821
    if-eqz p3, :cond_3

    .line 822
    const/16 v9, 0x3a

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(C)V

    .line 823
    invoke-virtual {v7, p1, v5}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 817
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 825
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_3

    .line 830
    .end local v2           #i:I
    .end local v7           #token:Lcom/android/server/wm/WindowToken;
    :cond_4
    if-eqz v4, :cond_5

    .line 831
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 833
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_10

    .line 834
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "DisplayContentsAnimator #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 835
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 836
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 838
    .local v1, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_5
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v9}, Lcom/android/server/wm/WinAnimatorList;->size()I

    move-result v9

    if-ge v3, v9, :cond_6

    .line 839
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWinAnimators:Lcom/android/server/wm/WinAnimatorList;

    invoke-virtual {v9, v3}, Lcom/android/server/wm/WinAnimatorList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowStateAnimator;

    .line 840
    .local v8, wanim:Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "Window #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 841
    const-string v9, ": "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 838
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 843
    .end local v8           #wanim:Lcom/android/server/wm/WindowStateAnimator;
    :cond_6
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v9, :cond_8

    .line 844
    if-nez p3, :cond_7

    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    iget-boolean v9, v9, Lcom/android/server/wm/DimSurface;->mDimShown:Z

    if-eqz v9, :cond_8

    .line 845
    :cond_7
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    invoke-virtual {v9, v6, p1}, Lcom/android/server/wm/DimSurface;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 849
    :cond_8
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v9, :cond_d

    .line 850
    if-nez p3, :cond_9

    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    iget-boolean v9, v9, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-eqz v9, :cond_a

    .line 851
    :cond_9
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mDimAnimator:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {v9, v6, p1}, Lcom/android/server/wm/DimAnimator;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 857
    :cond_a
    :goto_6
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v9, :cond_e

    .line 858
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mDimParams:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    invoke-virtual {v9, v6, p1}, Lcom/android/server/wm/DimAnimator$Parameters;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 863
    :cond_b
    :goto_7
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v9, :cond_f

    .line 864
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mScreenRotationAnimation:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    iget-object v9, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v9, v6, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 833
    :cond_c
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 854
    :cond_d
    if-eqz p3, :cond_a

    .line 855
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "no DimAnimator "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 860
    :cond_e
    if-eqz p3, :cond_b

    .line 861
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "no DimParams "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 866
    :cond_f
    if-eqz p3, :cond_c

    .line 867
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "no ScreenRotationAnimation "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 871
    .end local v1           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3           #j:I
    :cond_10
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 873
    if-eqz p3, :cond_11

    .line 874
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mAnimTransactionSequence="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 875
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 876
    const-string v9, " mForceHiding="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mCurrentTime="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 878
    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mDw="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 880
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, " mDh="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 881
    const-string v9, " mInnerDw="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 882
    const-string v9, " mInnerDh="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 884
    :cond_11
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v9, :cond_12

    .line 885
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 886
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 887
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v9}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 889
    :cond_12
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    if-eqz v9, :cond_13

    .line 890
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mPendingActions=0x"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 891
    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mPendingActions:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    :cond_13
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_14

    .line 894
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 895
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 897
    :cond_14
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mWallpaperTarget="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 898
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mWpAppAnimator="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mWpAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 899
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v9, :cond_15

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_16

    .line 900
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mLowerWallpaperTarget="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 901
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 902
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mUpperWallpaperTarget="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 903
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 905
    :cond_16
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v9, :cond_17

    .line 906
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "mUniverseBackground="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 907
    const-string v9, " mAboveUniverseLayer="

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(I)V

    .line 909
    :cond_17
    return-void
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .locals 1
    .parameter "displayId"

    .prologue
    .line 952
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-object v0
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "w"
    .parameter "wallpaperTarget"
    .parameter "lowerWallpaperTarget"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/WindowState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, wallpaperTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    const/4 v8, 0x0

    .line 283
    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-nez p2, :cond_4

    .line 284
    :cond_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 285
    .local v2, numTokens:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_4

    .line 286
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 287
    .local v4, token:Lcom/android/server/wm/WindowToken;
    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    .line 288
    .local v3, numWindows:I
    add-int/lit8 v1, v3, -0x1

    .local v1, j:I
    :goto_1
    if-ltz v1, :cond_3

    .line 289
    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 290
    .local v5, wallpaper:Lcom/android/server/wm/WindowState;
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 291
    .local v6, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v7, v6, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v7, :cond_2

    .line 292
    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    .line 293
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v5, v8}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 294
    const/4 v7, 0x4

    invoke-virtual {p0, v8, v7}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 288
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 302
    .end local v5           #wallpaper:Lcom/android/server/wm/WindowState;
    .end local v6           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_3
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 285
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 305
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #numTokens:I
    .end local v3           #numWindows:I
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_4
    return-void
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 3
    .parameter "w"
    .parameter "fromAnimator"

    .prologue
    .line 273
    if-eqz p2, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Ljava/util/ArrayList;)V

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method isDimmingLocked(I)Z
    .locals 1
    .parameter "displayId"

    .prologue
    .line 762
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDimmingLocked(Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 2
    .parameter "winAnimator"

    .prologue
    .line 766
    iget-object v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v1

    iget-object v0, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimParams:Lcom/android/server/wm/DimAnimator$Parameters;

    .line 768
    .local v0, dimParams:Lcom/android/server/wm/DimAnimator$Parameters;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DimAnimator$Parameters;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeDisplayLocked(I)V
    .locals 3
    .parameter "displayId"

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 154
    .local v0, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_2

    .line 155
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    invoke-virtual {v1}, Lcom/android/server/wm/DimSurface;->kill()V

    .line 157
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 159
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 161
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 163
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v1, :cond_2

    .line 164
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/DimAnimator;->kill()V

    .line 165
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 170
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V
    .locals 6
    .parameter "appAnimator"
    .parameter "changes"
    .parameter "s"

    .prologue
    .line 923
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 924
    .local v1, displays:Landroid/util/SparseIntArray;
    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 925
    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowStateAnimator;

    .line 926
    .local v3, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-object v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 927
    .local v0, displayId:I
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 928
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 930
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, p3, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 933
    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 924
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 936
    .end local v0           #displayId:I
    .end local v3           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_1
    return-void
.end method

.method setCurrentFocus(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .parameter "currentFocus"

    .prologue
    .line 750
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 751
    return-void
.end method

.method setDisplayDimensions(IIII)V
    .locals 0
    .parameter "curWidth"
    .parameter "curHeight"
    .parameter "appWidth"
    .parameter "appHeight"

    .prologue
    .line 755
    iput p1, p0, Lcom/android/server/wm/WindowAnimator;->mDw:I

    .line 756
    iput p2, p0, Lcom/android/server/wm/WindowAnimator;->mDh:I

    .line 757
    iput p3, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDw:I

    .line 758
    iput p4, p0, Lcom/android/server/wm/WindowAnimator;->mInnerDh:I

    .line 759
    return-void
.end method

.method setPendingLayoutChanges(II)V
    .locals 2
    .parameter "displayId"
    .parameter "changes"

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    or-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 919
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1
    .parameter "displayId"
    .parameter "animation"

    .prologue
    .line 948
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 949
    return-void
.end method

.method updateAnimToLayoutLocked()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;

    .line 175
    .local v0, animToLayout:Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;
    monitor-enter v0

    .line 176
    :try_start_0
    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    iput v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mBulkUpdateParams:I

    .line 177
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mPendingLayoutChanges:Landroid/util/SparseIntArray;

    .line 178
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 180
    iget-boolean v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mUpdateQueued:Z

    if-nez v1, :cond_0

    .line 181
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowAnimator$AnimatorToLayoutParams;->mUpdateQueued:Z

    .line 182
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 184
    :cond_0
    monitor-exit v0

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
