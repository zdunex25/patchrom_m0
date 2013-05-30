.class public Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;
.super Landroid/widget/FrameLayout;
.source "CircleMissedMsgList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircleMissedMsgList"


# instance fields
.field private final DEBUG:Z

.field private final MAX_LIST_NUM:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_MSG:I

.field mBottomText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mGapY:I

.field private mGuideLineColor:I

.field private mHoveringPointX:I

.field private mHoveringPointY:I

.field private mLineEndX:I

.field private mLineEndY:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartX:I

.field private mLineStartY:I

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/CircleMissedEventData;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field private mMissedCount:I

.field private mRingDrawable:Landroid/graphics/drawable/Drawable;

.field private mRingHeight:I

.field private mRingWidth:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockAcquired:Z

.field private m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->DEBUG:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    .line 54
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->MAX_LIST_NUM:I

    .line 77
    const/16 v0, 0x7b

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->REQ_INDEX_MSG:I

    .line 78
    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->MSG_PKG:Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->init(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method private handleMissedCallUpdate()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->notifyDataSetChanged()V

    .line 224
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    const-string v2, "CircleMissedMsgList"

    const-string v3, "init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 90
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x109005f

    invoke-virtual {v0, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 91
    const v2, 0x102030a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mListView:Landroid/widget/ListView;

    .line 92
    const v2, 0x102030b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mBottomText:Landroid/widget/TextView;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mList:Ljava/util/ArrayList;

    .line 95
    new-instance v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mList:Ljava/util/ArrayList;

    invoke-direct {v2, p1, v3, v5}, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    .line 96
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080430

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingWidth:I

    .line 100
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingHeight:I

    .line 101
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 103
    const v2, -0x887c72

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mGuideLineColor:I

    .line 105
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLinePaint:Landroid/graphics/Paint;

    .line 106
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4040

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 108
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mGuideLineColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    const/16 v2, 0x32

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mGapY:I

    .line 113
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 114
    .local v1, pm:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v3, "CircleMissedMsgList"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->updateMissedEvent()V

    .line 117
    return-void
.end method

.method private setGuideLineStartPos()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 204
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 205
    .local v0, pos:[I
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mMissedCount:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 207
    aget v1, v0, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineStartX:I

    .line 208
    aget v1, v0, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mGapY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineStartY:I

    .line 215
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 211
    aget v1, v0, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineStartX:I

    .line 212
    aget v1, v0, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mGapY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineStartY:I

    goto :goto_0
.end method

.method private setGuildeLineEndPos(II)V
    .locals 1
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 218
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineEndX:I

    .line 219
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mGapY:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineEndY:I

    .line 220
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 195
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineEndX:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineEndY:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 199
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->setGuideLineStartPos()V

    .line 200
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineStartX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineStartY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineEndX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLineEndY:I

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mRingWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 201
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_information_preview"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 169
    .local v0, action:I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->setGuildeLineEndPos(II)V

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->invalidate()V

    .line 187
    .end local v0           #action:I
    :cond_0
    :goto_0
    return-void

    .line 172
    .restart local v0       #action:I
    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 173
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 175
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLockAcquired:Z

    .line 177
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->setVisibility(I)V

    .line 178
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->setBackgroundColor(I)V

    goto :goto_0

    .line 179
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 180
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLockAcquired:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_4

    .line 181
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 182
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mWakeLockAcquired:Z

    .line 184
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateMissedEvent()V
    .locals 4

    .prologue
    .line 227
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 228
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 229
    const-string v2, "CircleMissedMsgList"

    const-string v3, "onMissedEventUpdate : mNM is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    .line 233
    .local v1, missedMsgNotiInfo:Landroid/app/NotificationInfo;
    if-nez v1, :cond_1

    .line 234
    const-string v2, "CircleMissedMsgList"

    const-string v3, "onMissedEventUpdate : missedCallNotiInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_1
    iget v2, v1, Landroid/app/NotificationInfo;->missedCount:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mMissedCount:I

    .line 239
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->updateMissedMsg()V

    goto :goto_0
.end method

.method public updateMissedMsg()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 120
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    move-result-object v2

    .line 122
    .local v2, dbAdapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 123
    const-string v9, "CircleMissedMsgList"

    const-string v10, "updateMissedMsg : DB is opend"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->open()Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    .line 128
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->getMissedMsgCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 130
    .local v1, cursor:Landroid/database/Cursor;
    const-string v9, "CircleMissedMsgList"

    const-string v10, "updateMissedMsg"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v3, 0x0

    .line 133
    .local v3, i:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 134
    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mMissedCount:I

    .line 135
    .local v4, max_count:I
    const/4 v9, 0x4

    if-le v4, v9, :cond_3

    .line 136
    add-int/lit8 v6, v4, -0x4

    .line 137
    .local v6, number:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mBottomText:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mContext:Landroid/content/Context;

    const v11, 0x1040734

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mBottomText:Landroid/widget/TextView;

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    const/4 v4, 0x4

    .line 144
    .end local v6           #number:I
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 146
    :cond_1
    if-lt v3, v4, :cond_4

    .line 160
    :cond_2
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 161
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->close()V

    .line 163
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->m_adapter:Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/sec/CircleMissedEventListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 141
    :cond_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mBottomText:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 149
    :cond_4
    const-string v9, "name"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, name:Ljava/lang/String;
    const-string v9, "time"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 151
    .local v7, time:J
    const-string v9, "content"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, content:Ljava/lang/String;
    const-string v9, "CircleMissedMsgList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMissedMsg : name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " content = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->mList:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;

    invoke-direct {v10, v5, v0, v7, v8}, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v3, v3, 0x1

    .line 157
    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_2
.end method
