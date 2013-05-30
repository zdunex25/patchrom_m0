.class public Lcom/android/server/am/MultiWindowManagerService;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerService"

.field private static mSelf:Lcom/android/server/am/MultiWindowManagerService;


# instance fields
.field private SPLIT_ZONE_LEFT:Z

.field private SPLIT_ZONE_RIGHT:Z

.field private mBehaviorBasedLaunch:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentLaunchMode:I

.field private mIgnoreIntentWindowMode:Z

.field private mLock:Ljava/lang/Object;

.field private mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

.field private mSupportAllApps:Z

.field mWindowDefHeight:I

.field mWindowDefWidth:I

.field mWindowGap:I

.field private mWindowInfoMapByComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowInfoMapByTaskId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mWindowMinimizedHeight:I

.field mWindowMinimizedWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    .line 35
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    .line 36
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    .line 40
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_LEFT:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_RIGHT:Z

    .line 55
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    .line 56
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 57
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 58
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 59
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    .line 676
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    .line 62
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    .line 63
    sput-object p0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    .line 64
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultWindowInfo()V

    .line 65
    return-void
.end method

.method private arrangeWindowSizeLocked(Landroid/os/Bundle;Landroid/graphics/Point;)V
    .locals 4
    .parameter "winInfo"
    .parameter "fullscreen"

    .prologue
    const/4 v3, 0x0

    .line 427
    const-string v1, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 428
    .local v0, lastSize:Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 429
    const-string v1, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #lastSize:Landroid/graphics/Rect;
    check-cast v0, Landroid/graphics/Rect;

    .line 431
    .restart local v0       #lastSize:Landroid/graphics/Rect;
    :cond_0
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_1

    .line 432
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 433
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-gez v1, :cond_1

    .line 434
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 437
    :cond_1
    iget v1, p2, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_2

    .line 438
    iget v1, p2, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 439
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_2

    .line 440
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 443
    :cond_2
    return-void
.end method

.method private calculateCascadeWindowSize(I)Landroid/graphics/Rect;
    .locals 6
    .parameter "idx"

    .prologue
    .line 446
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 447
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 448
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 449
    .local v2, iDeviceWidth:I
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 451
    .local v1, iDeviceHeight:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 452
    .local v3, rect:Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/lit8 v5, p1, 0x1

    mul-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 453
    iget v4, v3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 454
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/lit8 v5, p1, 0x1

    mul-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 455
    iget v4, v3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 456
    return-object v3
.end method

.method private generateMinimizedOffset(I)Landroid/graphics/Point;
    .locals 9
    .parameter "index"

    .prologue
    .line 739
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 740
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 742
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 743
    .local v1, shortSize:I
    :goto_0
    mul-int/lit16 v6, v1, 0xa0

    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v2, v6, v7

    .line 748
    .local v2, shortSizeDp:I
    const/16 v6, 0x258

    if-ge v2, v6, :cond_1

    .line 749
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 750
    .local v3, statusbarHeight:I
    const/4 v4, 0x2

    .line 751
    .local v4, x:I
    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, p1, 0x1

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x6

    sub-int/2addr v6, v7

    sub-int v5, v6, v3

    .line 762
    .end local v3           #statusbarHeight:I
    .local v5, y:I
    :goto_1
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object v6

    .line 742
    .end local v1           #shortSize:I
    .end local v2           #shortSizeDp:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 754
    .restart local v1       #shortSize:I
    .restart local v2       #shortSizeDp:I
    :cond_1
    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    if-lt v6, v7, :cond_2

    .line 755
    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    add-int/lit8 v6, v6, 0x6

    rem-int/lit8 v7, p1, 0x3

    mul-int/2addr v6, v7

    add-int/lit8 v4, v6, 0x2

    .line 756
    .restart local v4       #x:I
    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, p1, 0x3

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x6

    sub-int v5, v6, v7

    .restart local v5       #y:I
    goto :goto_1

    .line 758
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_2
    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    add-int/lit8 v6, v6, 0x6

    rem-int/lit8 v7, p1, 0x2

    mul-int/2addr v6, v7

    add-int/lit8 v4, v6, 0x2

    .line 759
    .restart local v4       #x:I
    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, p1, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x6

    sub-int v5, v6, v7

    .restart local v5       #y:I
    goto :goto_1
.end method

.method private getEmptySplitZone(Ljava/util/ArrayList;)I
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v6, 0x20

    .line 117
    const/4 v0, 0x0

    .line 120
    .local v0, foundZone:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 121
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    goto :goto_0

    .line 125
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-eqz v0, :cond_3

    .line 126
    xor-int/lit8 v3, v0, -0x1

    and-int/lit8 v0, v3, 0x1e

    .line 127
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 128
    and-int/lit8 v3, v0, 0x6

    if-eqz v3, :cond_4

    .line 130
    and-int/lit8 v0, v0, -0x19

    .line 131
    and-int/lit8 v3, v0, 0x6

    const/4 v5, 0x6

    if-ne v3, v5, :cond_2

    .line 133
    :try_start_0
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    if-eq v3, v6, :cond_1

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v5, 0x10

    if-ne v3, v5, :cond_2

    .line 135
    :cond_1
    and-int/lit8 v0, v0, -0x5

    .line 144
    :cond_2
    :goto_1
    monitor-exit v4

    .line 147
    :cond_3
    return v0

    .line 137
    :cond_4
    and-int/lit8 v3, v0, 0x18

    const/16 v5, 0x18

    if-ne v3, v5, :cond_2

    .line 140
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    if-eq v3, v6, :cond_5

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v5, 0x8

    if-ne v3, v5, :cond_2

    .line 142
    :cond_5
    and-int/lit8 v0, v0, -0x11

    goto :goto_1

    .line 144
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getNextSplitZone(Ljava/util/ArrayList;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v5, 0x6

    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, splitZone:I
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->getEmptySplitZone(Ljava/util/ArrayList;)I

    move-result v1

    .line 156
    if-nez v1, :cond_1

    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, topWindowMode:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget v2, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 161
    :cond_0
    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v0

    .line 163
    .local v0, options:I
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 165
    :try_start_0
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    sparse-switch v3, :sswitch_data_0

    .line 212
    :goto_0
    monitor-exit v4

    .line 215
    .end local v0           #options:I
    .end local v2           #topWindowMode:I
    :cond_1
    return v1

    .line 167
    .restart local v0       #options:I
    .restart local v2       #topWindowMode:I
    :sswitch_0
    and-int/lit8 v3, v0, 0x6

    if-ne v3, v5, :cond_2

    .line 169
    const/16 v1, 0x18

    goto :goto_0

    .line 171
    :cond_2
    const/4 v1, 0x6

    .line 173
    goto :goto_0

    .line 175
    :sswitch_1
    and-int/lit8 v3, v0, 0x6

    if-ne v3, v5, :cond_3

    .line 177
    const/16 v1, 0x8

    goto :goto_0

    .line 178
    :cond_3
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_4

    .line 179
    const/16 v1, 0x10

    goto :goto_0

    .line 180
    :cond_4
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_5

    .line 181
    const/4 v1, 0x6

    goto :goto_0

    .line 183
    :cond_5
    const/4 v1, 0x6

    .line 185
    goto :goto_0

    .line 187
    :sswitch_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_6

    .line 188
    const/4 v1, 0x4

    goto :goto_0

    .line 189
    :cond_6
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_7

    .line 190
    const/16 v1, 0x18

    goto :goto_0

    .line 191
    :cond_7
    and-int/lit8 v3, v0, 0x18

    const/16 v5, 0x18

    if-ne v3, v5, :cond_8

    .line 193
    const/4 v1, 0x2

    goto :goto_0

    .line 195
    :cond_8
    const/4 v1, 0x2

    .line 197
    goto :goto_0

    .line 199
    :sswitch_3
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_9

    .line 200
    const/4 v1, 0x4

    goto :goto_0

    .line 201
    :cond_9
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_a

    .line 202
    const/16 v1, 0x8

    goto :goto_0

    .line 203
    :cond_a
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_b

    .line 204
    const/16 v1, 0x10

    goto :goto_0

    .line 205
    :cond_b
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_c

    .line 206
    const/4 v1, 0x2

    goto :goto_0

    .line 208
    :cond_c
    const/4 v1, 0x2

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getSelf()Lcom/android/server/am/MultiWindowManagerService;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    return-object v0
.end method


# virtual methods
.method public addWindowInfo(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;)V
    .locals 13
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p2, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 220
    .local v5, taskId:I
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 221
    .local v2, intent:Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 222
    .local v1, info:Landroid/content/pm/ActivityInfo;
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 224
    .local v3, realActivity:Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 226
    .local v7, topWinInfo:Landroid/os/Bundle;
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 227
    const/4 v10, 0x0

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 228
    .local v6, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_0

    .line 229
    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v10, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v11, v6, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v10, v11}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v7

    .line 233
    .end local v6           #top:Lcom/android/server/am/ActivityRecord;
    :cond_0
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 234
    :try_start_0
    invoke-virtual {p0, v1, v2, v7}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 237
    .local v8, winInfodefault:Landroid/os/Bundle;
    iget v10, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v10, v10, 0x4000

    if-nez v10, :cond_1

    .line 238
    iget v10, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v9, v10, 0xff

    .line 239
    .local v9, zoneMask:I
    if-nez v9, :cond_1

    .line 240
    iget v10, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;)I

    move-result v12

    or-int/2addr v10, v12

    iput v10, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 244
    .end local v9           #zoneMask:I
    :cond_1
    iget v10, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v10, v10, 0xff

    if-eqz v10, :cond_2

    .line 245
    const-string v10, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v12, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v12}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 248
    :cond_2
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 249
    .local v4, taskBundle:Landroid/os/Bundle;
    if-eqz v4, :cond_3

    .line 250
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 255
    :goto_0
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 256
    .local v0, cmpBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 257
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 261
    :goto_1
    monitor-exit v11

    .line 262
    return-void

    .line 252
    .end local v0           #cmpBundle:Landroid/os/Bundle;
    :cond_3
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 261
    .end local v4           #taskBundle:Landroid/os/Bundle;
    .end local v8           #winInfodefault:Landroid/os/Bundle;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 259
    .restart local v0       #cmpBundle:Landroid/os/Bundle;
    .restart local v4       #taskBundle:Landroid/os/Bundle;
    .restart local v8       #winInfodefault:Landroid/os/Bundle;
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v10, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public arrangeWindowInfo(ILandroid/os/Bundle;)V
    .locals 11
    .parameter "windowMode"
    .parameter "winInfo"

    .prologue
    .line 702
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 703
    :try_start_0
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v1

    .line 704
    .local v1, mode:I
    const/high16 v5, 0x100

    if-ne v1, v5, :cond_0

    .line 705
    monitor-exit v6

    .line 736
    :goto_0
    return-void

    .line 707
    :cond_0
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v3

    .line 709
    .local v3, options:I
    and-int/lit16 v5, p1, 0xff

    if-eqz v5, :cond_1

    .line 710
    const-string v5, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-static {p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 714
    :cond_1
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    const/4 v7, -0x1

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 715
    .local v4, slot:I
    const/high16 v5, 0x10

    and-int/2addr v5, v3

    if-eqz v5, :cond_3

    .line 716
    if-gez v4, :cond_2

    .line 717
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->getSlot()I

    move-result v4

    .line 718
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 719
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 724
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/server/am/MultiWindowManagerService;->generateMinimizedOffset(I)Landroid/graphics/Point;

    move-result-object v2

    .line 725
    .local v2, offset:Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    iget v8, v2, Landroid/graphics/Point;->x:I

    iget v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    add-int/2addr v9, v10

    invoke-direct {v0, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 727
    .local v0, minimizedSize:Landroid/graphics/Rect;
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    invoke-virtual {p2, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 735
    .end local v0           #minimizedSize:Landroid/graphics/Rect;
    .end local v2           #offset:Landroid/graphics/Point;
    :goto_2
    monitor-exit v6

    goto :goto_0

    .end local v1           #mode:I
    .end local v3           #options:I
    .end local v4           #slot:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 721
    .restart local v1       #mode:I
    .restart local v3       #options:I
    .restart local v4       #slot:I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    goto :goto_1

    .line 729
    :cond_3
    if-gez v4, :cond_4

    .line 730
    monitor-exit v6

    goto :goto_0

    .line 732
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 733
    const-string v5, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public arrangeWindowInfos(IILjava/util/ArrayList;)V
    .locals 24
    .parameter "changes"
    .parameter "mode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p3, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 461
    :try_start_0
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 462
    .local v6, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 463
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 464
    .local v4, N:I
    const/4 v5, 0x0

    .line 465
    .local v5, divideCount:I
    const/4 v8, 0x0

    .line 467
    .local v8, j:I
    const/high16 v18, 0x1000

    and-int v18, v18, p1

    if-eqz v18, :cond_1

    .line 468
    const/4 v9, 0x0

    .local v9, k:I
    :goto_0
    if-ge v9, v4, :cond_0

    .line 469
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 470
    .local v14, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 471
    .local v17, winInfo:Landroid/os/Bundle;
    const-string v18, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 472
    const-string v18, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 468
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 474
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->clearSlots()V

    .line 476
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v4, :cond_3

    .line 477
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 478
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 479
    .restart local v17       #winInfo:Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/am/MultiWindowManagerService;->generateMinimizedOffset(I)Landroid/graphics/Point;

    move-result-object v11

    .line 480
    .local v11, offset:Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/Rect;

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 482
    .local v10, minimizedSize:Landroid/graphics/Rect;
    const-string v18, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 484
    const-string v18, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->getSlot()I

    move-result v20

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 476
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 487
    .end local v7           #i:I
    .end local v9           #k:I
    .end local v10           #minimizedSize:Landroid/graphics/Rect;
    .end local v11           #offset:Landroid/graphics/Point;
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :cond_1
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultWindowInfo()V

    .line 490
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    if-ge v7, v4, :cond_3

    .line 491
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 492
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 493
    .restart local v17       #winInfo:Landroid/os/Bundle;
    const-string v18, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 494
    .local v16, slot:I
    if-ltz v16, :cond_2

    .line 495
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->generateMinimizedOffset(I)Landroid/graphics/Point;

    move-result-object v11

    .line 496
    .restart local v11       #offset:Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/Rect;

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 498
    .restart local v10       #minimizedSize:Landroid/graphics/Rect;
    const-string v18, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 490
    .end local v10           #minimizedSize:Landroid/graphics/Rect;
    .end local v11           #offset:Landroid/graphics/Point;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 503
    .end local v7           #i:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v16           #slot:I
    .end local v17           #winInfo:Landroid/os/Bundle;
    :cond_3
    move/from16 v0, p2

    and-int/lit16 v0, v0, -0x401

    move/from16 p2, v0

    .line 504
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    .line 506
    sparse-switch p2, :sswitch_data_0

    .line 673
    :cond_4
    monitor-exit v19

    .line 674
    return-void

    .line 508
    :sswitch_0
    add-int/lit8 v7, v4, -0x1

    .restart local v7       #i:I
    :goto_3
    if-ltz v7, :cond_4

    .line 509
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 510
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 511
    .restart local v17       #winInfo:Landroid/os/Bundle;
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x1f

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 513
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v12

    .line 514
    .local v12, option:I
    const/high16 v18, 0x80

    and-int v18, v18, v12

    if-eqz v18, :cond_5

    .line 508
    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 517
    :cond_5
    const-string v18, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 518
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowSizeLocked(Landroid/os/Bundle;Landroid/graphics/Point;)V

    goto :goto_4

    .line 673
    .end local v4           #N:I
    .end local v5           #divideCount:I
    .end local v6           #fullscreen:Landroid/graphics/Point;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v12           #option:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 522
    .restart local v4       #N:I
    .restart local v5       #divideCount:I
    .restart local v6       #fullscreen:Landroid/graphics/Point;
    .restart local v7       #i:I
    .restart local v8       #j:I
    .restart local v12       #option:I
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v17       #winInfo:Landroid/os/Bundle;
    :cond_6
    :try_start_1
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowSize(I)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 523
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 527
    .end local v7           #i:I
    .end local v12           #option:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :sswitch_1
    const/4 v5, 0x2

    .line 528
    rem-int/lit8 v18, v4, 0x2

    if-nez v18, :cond_7

    const/4 v8, 0x1

    .line 529
    :goto_5
    add-int/lit8 v7, v4, -0x1

    .restart local v7       #i:I
    :goto_6
    if-ltz v7, :cond_4

    .line 530
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 531
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 532
    .restart local v17       #winInfo:Landroid/os/Bundle;
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x1f

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 534
    const-string v18, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowSizeLocked(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 529
    :goto_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 528
    .end local v7           #i:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    .line 538
    .restart local v7       #i:I
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v17       #winInfo:Landroid/os/Bundle;
    :cond_8
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    rem-int v18, v8, v5

    if-nez v18, :cond_9

    const/16 v18, 0x6

    :goto_8
    or-int v18, v18, v20

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 540
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 542
    add-int/lit8 v18, v8, 0x1

    rem-int v8, v18, v5

    goto :goto_7

    .line 538
    :cond_9
    const/16 v18, 0x18

    goto :goto_8

    .line 546
    .end local v7           #i:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :sswitch_2
    const/4 v5, 0x3

    .line 547
    add-int/lit8 v7, v4, -0x1

    .restart local v7       #i:I
    :goto_9
    if-ltz v7, :cond_4

    .line 548
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 549
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 550
    .restart local v17       #winInfo:Landroid/os/Bundle;
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x1f

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 552
    const-string v18, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 553
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowSizeLocked(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 547
    :goto_a
    add-int/lit8 v7, v7, -0x1

    goto :goto_9

    .line 557
    :cond_a
    rem-int v8, v7, v5

    .line 558
    rem-int v18, v8, v5

    if-nez v18, :cond_b

    .line 559
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x6

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 565
    :goto_b
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_a

    .line 560
    :cond_b
    rem-int v18, v8, v5

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 561
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_b

    .line 563
    :cond_c
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_b

    .line 569
    .end local v7           #i:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :sswitch_3
    const/4 v5, 0x3

    .line 570
    add-int/lit8 v7, v4, -0x1

    .restart local v7       #i:I
    :goto_c
    if-ltz v7, :cond_4

    .line 571
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 572
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 573
    .restart local v17       #winInfo:Landroid/os/Bundle;
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x1f

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 575
    const-string v18, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 576
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowSizeLocked(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 570
    :goto_d
    add-int/lit8 v7, v7, -0x1

    goto :goto_c

    .line 580
    :cond_d
    rem-int v8, v7, v5

    .line 581
    rem-int v18, v8, v5

    if-nez v18, :cond_e

    .line 582
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 588
    :goto_e
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_d

    .line 583
    :cond_e
    rem-int v18, v8, v5

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 584
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_e

    .line 586
    :cond_f
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x18

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_e

    .line 592
    .end local v7           #i:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :sswitch_4
    const/4 v5, 0x4

    .line 593
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_f
    if-ge v7, v4, :cond_4

    .line 594
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 595
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 597
    .restart local v17       #winInfo:Landroid/os/Bundle;
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x1f

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 599
    const-string v18, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 600
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowSizeLocked(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 593
    :goto_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 604
    :cond_10
    rem-int v8, v7, v5

    .line 605
    rem-int v18, v8, v5

    if-nez v18, :cond_11

    .line 606
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 614
    :goto_11
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_10

    .line 607
    :cond_11
    rem-int v18, v8, v5

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 608
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_11

    .line 609
    :cond_12
    rem-int v18, v8, v5

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 610
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_11

    .line 612
    :cond_13
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_11

    .line 618
    .end local v7           #i:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :sswitch_5
    add-int/lit8 v7, v4, -0x1

    .restart local v7       #i:I
    :goto_12
    if-ltz v7, :cond_4

    .line 619
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 621
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x1f

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 618
    add-int/lit8 v7, v7, -0x1

    goto :goto_12

    .line 626
    .end local v7           #i:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    :sswitch_6
    const/high16 v18, 0x1000

    and-int v18, v18, p1

    if-nez v18, :cond_4

    .line 627
    add-int/lit8 v7, v4, -0x1

    .restart local v7       #i:I
    :goto_13
    if-ltz v7, :cond_4

    .line 628
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 629
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 630
    .restart local v17       #winInfo:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowSizeLocked(Landroid/os/Bundle;Landroid/graphics/Point;)V

    .line 627
    add-int/lit8 v7, v7, -0x1

    goto :goto_13

    .line 635
    .end local v7           #i:I
    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    .end local v17           #winInfo:Landroid/os/Bundle;
    :sswitch_7
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 636
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    const/4 v15, 0x1

    .line 637
    .local v15, restored:Z
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 638
    .restart local v17       #winInfo:Landroid/os/Bundle;
    const-string v18, "android.intent.extra.REQUEST_WINDOW_MODE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 639
    .local v13, prevOption:I
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const/high16 v20, 0x10

    and-int v18, v18, v20

    if-eqz v18, :cond_15

    .line 640
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const v20, -0x100001

    and-int v18, v18, v20

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 641
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const v20, -0x800001

    and-int v18, v18, v20

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 652
    :goto_14
    const-string v18, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 654
    const/4 v7, 0x1

    .restart local v7       #i:I
    :goto_15
    if-ge v7, v4, :cond_4

    .line 655
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v14, Lcom/android/server/am/ActivityRecord;

    .line 656
    .restart local v14       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v17

    .line 657
    if-eqz v15, :cond_17

    .line 658
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const v20, -0x800001

    and-int v18, v18, v20

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 659
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const v20, -0x100001

    and-int v18, v18, v20

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 660
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v20, 0x1e

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 661
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, -0x100

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 662
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const-string v20, "android.intent.extra.REQUEST_WINDOW_MODE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    or-int v18, v18, v20

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 654
    :cond_14
    :goto_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 643
    .end local v7           #i:I
    :cond_15
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v20, 0x1e

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 644
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, -0x100

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 645
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int v18, v18, v13

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_14

    .line 647
    :cond_16
    const/4 v15, 0x0

    .line 648
    const-string v18, "android.intent.extra.REQUEST_WINDOW_MODE"

    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 649
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x1e

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_14

    .line 665
    .restart local v7       #i:I
    :cond_17
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const/high16 v20, 0x80

    or-int v18, v18, v20

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 666
    iget v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v18, v0

    const/high16 v20, 0x10

    or-int v18, v18, v20

    move/from16 v0, v18

    iput v0, v14, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_16

    .line 506
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_7
        0x80 -> :sswitch_6
        0x100 -> :sswitch_6
        0x200 -> :sswitch_5
    .end sparse-switch
.end method

.method public checkBehaviorBasedLaunch()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    return v0
.end method

.method public checkIgnoreIntentWindowMode()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    return v0
.end method

.method public checkSupportAllApps()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v0, "----------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const-string v0, "MULTIWINDOW SERVICE (dumpsys multiwindow service)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v0, "----------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentLaunchMode()I
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    monitor-exit v1

    return v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 26
    .parameter "info"
    .parameter "intent"
    .parameter "topWinInfo"

    .prologue
    .line 351
    const/4 v6, 0x0

    .line 352
    .local v6, defWidth:I
    const/4 v4, 0x0

    .line 353
    .local v4, defHeight:I
    const/4 v13, 0x0

    .line 354
    .local v13, minWidth:I
    const/4 v11, 0x0

    .line 355
    .local v11, minHeight:I
    const/16 v16, 0x0

    .line 356
    .local v16, r:Landroid/content/res/Resources;
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 357
    .local v18, winInfo:Landroid/os/Bundle;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 358
    .local v8, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 359
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 361
    .local v10, metaData:Landroid/os/Bundle;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v16

    .line 362
    if-eqz v10, :cond_3

    .line 363
    const-string v20, "com.sec.android.multiwindow.DEFAULT_SIZE_W"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 364
    .local v5, defSizeId:I
    if-eqz v5, :cond_0

    .line 365
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v6, v0

    .line 367
    :cond_0
    const-string v20, "com.sec.android.multiwindow.DEFAULT_SIZE_H"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 368
    if-eqz v5, :cond_1

    .line 369
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v4, v0

    .line 372
    :cond_1
    const-string v20, "com.sec.android.multiwindow.MINIMUM_SIZE_W"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 373
    .local v12, minSizeId:I
    if-eqz v12, :cond_2

    .line 374
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v13, v0

    .line 376
    :cond_2
    const-string v20, "com.sec.android.multiwindow.MINIMUM_SIZE_H"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 377
    if-eqz v12, :cond_3

    .line 378
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v20

    move/from16 v0, v20

    float-to-int v11, v0

    .line 387
    .end local v5           #defSizeId:I
    .end local v12           #minSizeId:I
    :cond_3
    :goto_1
    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 388
    :cond_4
    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 389
    :cond_5
    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 390
    :cond_6
    if-nez v11, :cond_7

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 392
    :cond_7
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    sub-int v20, v20, v6

    shr-int/lit8 v9, v20, 0x1

    .line 393
    .local v9, left:I
    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    sub-int v20, v20, v4

    shr-int/lit8 v17, v20, 0x1

    .line 394
    .local v17, top:I
    new-instance v19, Landroid/graphics/Rect;

    add-int v20, v9, v6

    add-int v21, v17, v4

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v9, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 395
    .local v19, windowRect:Landroid/graphics/Rect;
    if-eqz p3, :cond_a

    .line 396
    const-string v20, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    .line 397
    .local v15, parentSize:Landroid/graphics/Rect;
    if-nez v15, :cond_8

    .line 398
    const-string v20, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    .end local v15           #parentSize:Landroid/graphics/Rect;
    check-cast v15, Landroid/graphics/Rect;

    .line 401
    .restart local v15       #parentSize:Landroid/graphics/Rect;
    :cond_8
    if-eqz v15, :cond_a

    .line 402
    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    move/from16 v22, v0

    add-int v21, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 404
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_9

    .line 405
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 407
    :cond_9
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 408
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 413
    .end local v15           #parentSize:Landroid/graphics/Rect;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v14

    .line 414
    .local v14, overridePosition:Landroid/graphics/Rect;
    if-eqz v14, :cond_b

    .line 415
    const-string v20, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 418
    :cond_b
    const-string v20, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 419
    const-string v20, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    new-instance v21, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v13, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 420
    const-string v20, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    new-instance v21, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v25, v0

    invoke-direct/range {v21 .. v25}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 421
    const-string v21, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    move/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    const/16 v20, 0x1

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 423
    return-object v18

    .line 359
    .end local v9           #left:I
    .end local v10           #metaData:Landroid/os/Bundle;
    .end local v14           #overridePosition:Landroid/graphics/Rect;
    .end local v17           #top:I
    .end local v19           #windowRect:Landroid/graphics/Rect;
    :cond_c
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 381
    .restart local v10       #metaData:Landroid/os/Bundle;
    :catch_0
    move-exception v7

    .line 382
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 383
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v7

    .line 384
    .local v7, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 421
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v9       #left:I
    .restart local v14       #overridePosition:Landroid/graphics/Rect;
    .restart local v17       #top:I
    .restart local v19       #windowRect:Landroid/graphics/Rect;
    :cond_d
    const/16 v20, 0x0

    goto :goto_2
.end method

.method public getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 6
    .parameter "taskId"
    .parameter "realActivity"

    .prologue
    .line 86
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 87
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 90
    .local v2, taskBundle:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 91
    .local v1, lastSize:Landroid/graphics/Rect;
    if-nez v1, :cond_0

    .line 92
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 95
    .local v0, cmpBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 96
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #lastSize:Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 97
    .restart local v1       #lastSize:Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 98
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    .end local v0           #cmpBundle:Landroid/os/Bundle;
    :cond_0
    monitor-exit v4

    .line 106
    .end local v1           #lastSize:Landroid/graphics/Rect;
    .end local v2           #taskBundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 105
    :cond_1
    sget-boolean v3, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 107
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 106
    :cond_2
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public loadDefaultWindowInfo()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    .line 344
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 345
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 346
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 347
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 348
    return-void
.end method

.method public removeMinimizedSlot(I)V
    .locals 5
    .parameter "taskId"

    .prologue
    .line 328
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 329
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 331
    .local v1, winInfo:Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 332
    monitor-exit v3

    .line 340
    :goto_0
    return-void

    .line 334
    :cond_0
    const-string v2, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 335
    .local v0, slot:I
    if-ltz v0, :cond_1

    .line 336
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizedSlotManager:Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/android/server/am/MultiWindowManagerService$MinimizedSlotManager;->setSlot(IZ)V

    .line 337
    const-string v2, "android.intent.extra.WINDOW_MINIMIZED_SLOT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 339
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0           #slot:I
    .end local v1           #winInfo:Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeWindowInfo(I)V
    .locals 3
    .parameter "taskId"

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->removeMinimizedSlot(I)V

    .line 323
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    monitor-exit v1

    .line 325
    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, frontActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v9, 0x0

    .line 265
    iget v7, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v7, -0x1f

    iput v7, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 266
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 267
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 268
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 270
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v2

    .line 271
    .local v2, targetWinInfo:Landroid/os/Bundle;
    invoke-direct {p0, v9}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowSize(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 273
    .local v5, windowRect:Landroid/graphics/Rect;
    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 274
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 275
    .local v3, top:Lcom/android/server/am/ActivityRecord;
    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    .line 276
    .local v4, topWinInfo:Landroid/os/Bundle;
    const-string v7, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 277
    .local v1, parentSize:Landroid/graphics/Rect;
    if-nez v1, :cond_0

    .line 278
    const-string v7, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #parentSize:Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 281
    .restart local v1       #parentSize:Landroid/graphics/Rect;
    :cond_0
    if-eqz v1, :cond_2

    .line 282
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 284
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    if-le v7, v8, :cond_1

    .line 285
    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 287
    :cond_1
    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Point;->x:I

    if-le v7, v8, :cond_2

    .line 288
    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    shl-int/lit8 v7, v7, 0x1

    iget v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    shl-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 291
    :cond_2
    const-string v7, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v8}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 305
    .end local v0           #fullscreen:Landroid/graphics/Point;
    .end local v1           #parentSize:Landroid/graphics/Rect;
    .end local v2           #targetWinInfo:Landroid/os/Bundle;
    .end local v3           #top:Lcom/android/server/am/ActivityRecord;
    .end local v4           #topWinInfo:Landroid/os/Bundle;
    .end local v5           #windowRect:Landroid/graphics/Rect;
    :cond_3
    :goto_0
    return-void

    .line 293
    .restart local v0       #fullscreen:Landroid/graphics/Point;
    .restart local v2       #targetWinInfo:Landroid/os/Bundle;
    .restart local v5       #windowRect:Landroid/graphics/Rect;
    :cond_4
    iget v7, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v7, v7, 0x4000

    if-nez v7, :cond_5

    .line 294
    iget v7, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v6, v7, 0xff

    .line 295
    .local v6, zoneMask:I
    if-nez v6, :cond_5

    .line 296
    iget v7, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;)I

    move-result v8

    or-int/2addr v7, v8

    iput v7, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    .line 300
    .end local v6           #zoneMask:I
    :cond_5
    iget v7, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v7, v7, 0xff

    if-eqz v7, :cond_3

    .line 301
    const-string v7, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v8}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 5
    .parameter "taskId"
    .parameter "realActivity"
    .parameter "winInfo"

    .prologue
    .line 308
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 309
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 310
    .local v1, taskBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {v1, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 314
    .local v0, cmpBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 317
    :cond_1
    monitor-exit v3

    .line 318
    return-void

    .line 317
    .end local v0           #cmpBundle:Landroid/os/Bundle;
    .end local v1           #taskBundle:Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
