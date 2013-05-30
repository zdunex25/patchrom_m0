.class Landroid/webkit/WebViewClassic$StylusEventListener;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private final DELTA:I

.field private final HORIZONAL_THRESHOLD:I

.field private final VERTICAL_THRESHOLD:I

.field private mDirLTR:Z

.field public mEndX:I

.field public mEndY:I

.field private mMaxX:F

.field private mOldCursorPostion:I

.field private mPressed:Z

.field private mStartX:F

.field private mStartY:F

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 12324
    iput-object p1, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12325
    iput v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mOldCursorPostion:I

    .line 12326
    iput v1, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    .line 12327
    iput v1, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    .line 12328
    iput v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mEndX:I

    .line 12329
    iput v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mEndY:I

    .line 12330
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    .line 12331
    iput v1, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    .line 12332
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->DELTA:I

    .line 12333
    const/16 v0, 0x32

    iput v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->VERTICAL_THRESHOLD:I

    .line 12334
    const/16 v0, 0xa

    iput v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->HORIZONAL_THRESHOLD:I

    .line 12335
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$StylusEventListener;->mDirLTR:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12324
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$StylusEventListener;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 16
    .parameter "event"
    .parameter "clipboardId"

    .prologue
    .line 12339
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 12340
    .local v1, action:I
    const/4 v10, 0x0

    .line 12341
    .local v10, startCurPositionX:I
    const/4 v11, 0x0

    .line 12342
    .local v11, startCurPositionY:I
    const/4 v2, 0x0

    .line 12343
    .local v2, endCurPositionX:I
    const/4 v3, 0x0

    .line 12345
    .local v3, endCurPositionY:I
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1

    .line 12491
    :cond_0
    :goto_0
    return-void

    .line 12349
    :cond_1
    const-string/jumbo v13, "webview"

    const-string/jumbo v14, "onStylusButtonEvent start"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12351
    packed-switch v1, :pswitch_data_0

    .line 12490
    :cond_2
    :goto_1
    const-string/jumbo v13, "webview"

    const-string/jumbo v14, "onStylusButtonEvent END"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12353
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    if-eqz v13, :cond_2

    .line 12358
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_6

    .line 12359
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    const/high16 v15, 0x41a0

    add-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-gez v13, :cond_5

    .line 12360
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mDirLTR:Z

    .line 12361
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    .line 12384
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    const/high16 v15, 0x4248

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    const/high16 v15, 0x4248

    sub-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-gez v13, :cond_2

    .line 12385
    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    .line 12386
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v13, v14}, Landroid/webkit/WebViewClassic;->access$11602(Landroid/webkit/WebViewClassic;I)I

    .line 12387
    const-string/jumbo v13, "webview"

    const-string v14, "TextSelection is canceled because of height difference"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 12362
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    const/high16 v15, 0x41a0

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3

    .line 12363
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mDirLTR:Z

    .line 12364
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    goto :goto_2

    .line 12366
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mDirLTR:Z

    if-eqz v13, :cond_8

    .line 12367
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_7

    .line 12368
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    goto :goto_2

    .line 12369
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    const/high16 v15, 0x41a0

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_3

    .line 12370
    const-string/jumbo v13, "webview"

    const-string v14, "TextSelection is canceled because of wrong X position, DirLTR"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12371
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v13, v14}, Landroid/webkit/WebViewClassic;->access$11602(Landroid/webkit/WebViewClassic;I)I

    .line 12372
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    goto/16 :goto_2

    .line 12374
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mDirLTR:Z

    if-nez v13, :cond_3

    .line 12375
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_9

    .line 12376
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    goto/16 :goto_2

    .line 12377
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    const/high16 v14, 0x41a0

    add-float/2addr v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_3

    .line 12378
    const-string/jumbo v13, "webview"

    const-string v14, "TextSelection is canceled because of wrong X position, DirRTL"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12379
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v13, v14}, Landroid/webkit/WebViewClassic;->access$11602(Landroid/webkit/WebViewClassic;I)I

    .line 12380
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    goto/16 :goto_2

    .line 12393
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    .line 12395
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mMaxX:F

    .line 12396
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    .line 12397
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    .line 12398
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x1

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v13, v14}, Landroid/webkit/WebViewClassic;->access$11602(Landroid/webkit/WebViewClassic;I)I

    .line 12399
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mActionMove:Z
    invoke-static {v13, v14}, Landroid/webkit/WebViewClassic;->access$11702(Landroid/webkit/WebViewClassic;Z)Z

    .line 12400
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v13, v13, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v13, :cond_2

    .line 12401
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->clearSelection()V

    goto/16 :goto_1

    .line 12408
    :pswitch_2
    const/4 v4, 0x0

    .line 12409
    .local v4, endX:F
    const/4 v5, 0x0

    .line 12411
    .local v5, endY:F
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    if-eqz v13, :cond_0

    .line 12414
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 12415
    .local v9, rect:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 12416
    .local v8, offset:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v13}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13, v9, v8}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 12417
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 12418
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 12420
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    iget v14, v8, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    .line 12421
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    iget v14, v8, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    .line 12422
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_a

    .line 12423
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    .line 12425
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_b

    .line 12426
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    .line 12428
    :cond_b
    iget v13, v8, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    sub-float/2addr v4, v13

    .line 12429
    iget v13, v8, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    sub-float/2addr v5, v13

    .line 12430
    const/4 v13, 0x0

    cmpg-float v13, v4, v13

    if-gez v13, :cond_c

    .line 12431
    const/4 v4, 0x0

    .line 12433
    :cond_c
    const/4 v13, 0x0

    cmpg-float v13, v5, v13

    if-gez v13, :cond_d

    .line 12434
    const/4 v5, 0x0

    .line 12441
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    .line 12442
    .local v6, mScrollX:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->computeVerticalScrollOffset()I

    move-result v7

    .line 12444
    .local v7, mScrollY:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v10

    .line 12445
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v11

    .line 12446
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    float-to-int v14, v4

    invoke-virtual {v13, v14}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v2

    .line 12447
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    float-to-int v14, v5

    invoke-virtual {v13, v14}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v3

    .line 12450
    if-eq v10, v2, :cond_e

    sub-int v13, v10, v2

    const/16 v14, 0xa

    if-ge v13, v14, :cond_f

    sub-int v13, v2, v10

    const/16 v14, 0xa

    if-ge v13, v14, :cond_f

    .line 12451
    :cond_e
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    .line 12452
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v13, v14}, Landroid/webkit/WebViewClassic;->access$11602(Landroid/webkit/WebViewClassic;I)I

    .line 12453
    const-string/jumbo v13, "webview"

    const-string v14, "TextSelection is canceled because the positions are same."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 12456
    :cond_f
    if-le v10, v2, :cond_10

    .line 12457
    move v12, v2

    .line 12458
    .local v12, temp:I
    move v2, v10

    .line 12459
    move v10, v12

    .line 12463
    .end local v12           #temp:I
    :cond_10
    const-string/jumbo v13, "webview"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mStartX "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mStartY "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mStartY:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12464
    const-string/jumbo v13, "webview"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "endX "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " endY "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12465
    const-string/jumbo v13, "webview"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "offset.x "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " offset.y "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12466
    const-string/jumbo v13, "webview"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "startCurPositionX "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " startCurPositionY "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12467
    const-string/jumbo v13, "webview"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "endCurPositionX "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " endCurPositionY "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12470
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x1

    #setter for: Landroid/webkit/WebViewClassic;->mController:I
    invoke-static {v13, v14}, Landroid/webkit/WebViewClassic;->access$11802(Landroid/webkit/WebViewClassic;I)I

    .line 12471
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->selectClosestWord(II)Z
    invoke-static {v13, v10, v11}, Landroid/webkit/WebViewClassic;->access$11900(Landroid/webkit/WebViewClassic;II)Z

    .line 12472
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mLongPress:Z
    invoke-static {v13, v14}, Landroid/webkit/WebViewClassic;->access$12002(Landroid/webkit/WebViewClassic;Z)Z

    .line 12474
    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mEndX:I

    .line 12475
    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mEndY:I

    .line 12477
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v14, v14, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v14, v14, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v13, v14, :cond_11

    .line 12478
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v13, v13, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v13}, Landroid/webkit/WebMagnifier;->hide()V

    .line 12480
    :cond_11
    const-string/jumbo v13, "webview"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "action_up mSpenTextSelectionMode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v15}, Landroid/webkit/WebViewClassic;->access$11600(Landroid/webkit/WebViewClassic;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12482
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 12487
    .end local v4           #endX:F
    .end local v5           #endY:F
    .end local v6           #mScrollX:I
    .end local v7           #mScrollY:I
    .end local v8           #offset:Landroid/graphics/Point;
    .end local v9           #rect:Landroid/graphics/Rect;
    :pswitch_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/WebViewClassic$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 12351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
