.class public Landroid/webkit/WebTextSelectionControls;
.super Ljava/lang/Object;
.source "WebTextSelectionControls.java"


# static fields
.field static final GRANULARITY_CHARACTER:I = 0x0

.field static final GRANULARITY_IMAGE:I = 0x8

.field static final GRANULARITY_PARAGRAPH:I = 0x4

.field static final GRANULARITY_WORD:I = 0x1

.field static final HANDLE_CHAR_LEFT:I = 0x1

.field static final HANDLE_CHAR_RIGHT:I = 0x2

.field static final HANDLE_NONE:I = 0x0

.field static final HANDLE_PARA_BOTTOM:I = 0x5

.field static final HANDLE_PARA_LEFT:I = 0x3

.field static final HANDLE_PARA_RIGHT:I = 0x4

.field static final HANDLE_PARA_TOP:I = 0x6

.field private static MIN_SCALE_LEVEL:F = 0.0f

.field private static final STATE_CHECK_REVERSED:I = 0x5

.field private static final STATE_CHECK_UPSIDEDOWN:I = 0xa

.field private static final STATE_FORCE_REVERSED:I = 0x4

.field private static final STATE_FORCE_UPSIDEDOWN:I = 0x8

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_RESET_MASK:I = 0x3

.field private static final STATE_REVERSED:I = 0x1

.field private static final STATE_UPSIDEDOWN:I = 0x2

.field private static mControllerHeight:I

.field private static mControllerWidth:I


# instance fields
.field private final HORIZONTAL_TRANSPARENT_RATE:F

.field private final LOGTAG:Ljava/lang/String;

.field private final LOGV:Z

.field private mContext:Landroid/content/Context;

.field private mEndRect:Landroid/graphics/Rect;

.field private mHandleCrossing:Z

.field private mLeftHandleId:I

.field private mLeftHandleState:I

.field private mOrigCharHandleHeight:I

.field private mOrigCharHandleWidth:I

.field private mOrigParaHandleHeight:I

.field private mOrigParaHandleWidth:I

.field private mRect:Landroid/graphics/Rect;

.field private mRightHandleId:I

.field private mRightHandleState:I

.field private mSelectedtext:Ljava/lang/String;

.field private mSeletionCursor:Landroid/graphics/Rect;

.field private mStartRect:Landroid/graphics/Rect;

.field private mWebViewClassic:Landroid/webkit/WebViewClassic;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    const/high16 v0, 0x3f80

    sput v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    .line 87
    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 88
    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V
    .locals 5
    .parameter "context"
    .parameter "webviewclassic"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v2, "WebSelectionControls"

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->LOGTAG:Ljava/lang/String;

    .line 42
    iput-boolean v3, p0, Landroid/webkit/WebTextSelectionControls;->LOGV:Z

    .line 77
    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 80
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    .line 81
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    .line 82
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    .line 83
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    .line 90
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    .line 91
    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    .line 92
    iput-boolean v3, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    .line 99
    const v2, 0x3e0f5c29

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    .line 822
    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    .line 105
    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 106
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 107
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 108
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 109
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 110
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080656

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 115
    .local v1, SController:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108065a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, PController:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    .line 121
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    .line 123
    :cond_0
    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    .line 125
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    .line 127
    :cond_1
    return-void
.end method

.method private DrawOutlineParagraph(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "canvas"
    .parameter "rtSelection"

    .prologue
    .line 613
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 614
    .local v0, path:Landroid/graphics/Path;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 615
    .local v6, paint:Landroid/graphics/Paint;
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 616
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 617
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 618
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 619
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 620
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 621
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 622
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 623
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 624
    const v1, -0xffff01

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 625
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 626
    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 627
    return-void
.end method

.method private DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 12
    .parameter "canvas"
    .parameter "Start"
    .parameter "End"
    .parameter "pressed"

    .prologue
    .line 635
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {p0, p2, v7, v8}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v5

    .line 636
    .local v5, leftPos:Landroid/graphics/Point;
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-direct {p0, p3, v7, v8}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v6

    .line 640
    .local v6, rightPos:Landroid/graphics/Point;
    iget-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 641
    .local v1, SController:Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 643
    .local v0, EController:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    .line 645
    iget-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->isSelectionInEditField()Z

    move-result v3

    .line 646
    .local v3, isEditField:Z
    iget-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v8, p2, Landroid/graphics/Rect;->left:I

    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v10, v10, 0x5

    iget v11, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    .line 648
    .local v4, isInEditfield:Z
    if-eqz v3, :cond_0

    if-nez p4, :cond_0

    if-eqz v4, :cond_5

    :cond_0
    const/4 v2, 0x1

    .line 650
    .local v2, drawHandle:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 651
    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v8, v5, Landroid/graphics/Point;->y:I

    iget v9, v5, Landroid/graphics/Point;->x:I

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/graphics/Point;->y:I

    sget v11, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v10, v11

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 652
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 655
    :cond_1
    iget-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v8, p3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, v8, -0x5

    iget v9, p3, Landroid/graphics/Rect;->top:I

    iget v10, p3, Landroid/graphics/Rect;->right:I

    iget v11, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    .line 657
    if-eqz v3, :cond_2

    if-nez p4, :cond_2

    if-eqz v4, :cond_6

    :cond_2
    const/4 v2, 0x1

    .line 658
    :goto_1
    if-eqz v2, :cond_3

    .line 659
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    iget v9, v6, Landroid/graphics/Point;->x:I

    sget v10, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/graphics/Point;->y:I

    sget v11, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v10, v11

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 660
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 664
    .end local v2           #drawHandle:Z
    .end local v3           #isEditField:Z
    .end local v4           #isInEditfield:Z
    :cond_3
    iget-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    if-nez v7, :cond_4

    .line 665
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    .line 666
    :cond_4
    return-void

    .line 648
    .restart local v3       #isEditField:Z
    .restart local v4       #isInEditfield:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 657
    .restart local v2       #drawHandle:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V
    .locals 8
    .parameter "canvas"
    .parameter "type"
    .parameter "width"
    .parameter "height"
    .parameter "X"
    .parameter "Y"

    .prologue
    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    packed-switch p2, :pswitch_data_0

    .line 692
    :pswitch_0
    const-string v3, "WebSelectionControls"

    const-string v4, "DrawSelectionParaController : INVALID type."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :goto_0
    :pswitch_1
    return-void

    .line 677
    :pswitch_2
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108065a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 697
    :goto_1
    div-int/lit8 v3, p3, 0x2

    sub-int v1, p5, v3

    .line 698
    .local v1, x:I
    div-int/lit8 v3, p4, 0x2

    sub-int v2, p6, v3

    .line 701
    .local v2, y:I
    if-gez v1, :cond_2

    .line 703
    int-to-double v3, p3

    const-wide v5, 0x3fc3333333333333L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    neg-int v1, v3

    .line 708
    :cond_0
    :goto_2
    if-gez v2, :cond_3

    .line 710
    int-to-double v3, p4

    const-wide v5, 0x3fc999999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    neg-int v2, v3

    .line 715
    :cond_1
    :goto_3
    add-int v3, v1, p3

    add-int v4, v2, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 716
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 680
    .end local v1           #x:I
    .end local v2           #y:I
    :pswitch_3
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080658

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 681
    goto :goto_1

    .line 683
    :pswitch_4
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080659

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 684
    goto :goto_1

    .line 686
    :pswitch_5
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080657

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 687
    goto :goto_1

    .line 704
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v3

    sub-int/2addr v3, p3

    if-le v1, v3, :cond_0

    .line 706
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v3

    int-to-double v4, p3

    const-wide v6, 0x3feb333333333333L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v1, v3, v4

    goto :goto_2

    .line 711
    :cond_3
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v3

    sub-int/2addr v3, p4

    if-le v2, v3, :cond_1

    .line 712
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v3

    int-to-double v4, p4

    const-wide v6, 0x3fe999999999999aL

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v2, v3, v4

    goto :goto_3

    .line 675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private drawOutlineChar(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 7
    .parameter "canvas"
    .parameter "rtStart"
    .parameter "rtEnd"
    .parameter "pressed"

    .prologue
    .line 591
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 592
    .local v0, paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 593
    .local v1, rect1:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 595
    .local v2, rect2:Landroid/graphics/Rect;
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x2

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 596
    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x2

    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 598
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 599
    const v3, -0xffff01

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 600
    if-nez p4, :cond_0

    .line 601
    const/16 v3, 0xff

    const/16 v4, 0x58

    const/16 v5, 0xa5

    const/16 v6, 0xdc

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 602
    :cond_0
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 604
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 605
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 606
    return-void
.end method

.method private getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;
    .locals 8
    .parameter "selection"
    .parameter "handleType"
    .parameter "update"

    .prologue
    const v7, 0x1080656

    const v6, 0x1080655

    const/4 v5, 0x1

    const v4, 0x3e0f5c29

    const v3, 0x3f5c28f6

    .line 720
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 722
    .local v0, pos:Landroid/graphics/Point;
    if-ne v5, p2, :cond_4

    .line 723
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 724
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 731
    :goto_0
    if-eqz p3, :cond_1

    .line 732
    if-ne v5, p2, :cond_6

    .line 733
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    .line 734
    iput v7, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    .line 737
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-gez v1, :cond_0

    .line 738
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    .line 742
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_1

    .line 743
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v2

    if-gt v1, v2, :cond_5

    .line 744
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    .line 768
    :cond_1
    :goto_1
    if-ne v5, p2, :cond_c

    .line 770
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v1, v1, 0x5

    if-eqz v1, :cond_a

    .line 772
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-eqz v1, :cond_9

    .line 773
    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 774
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 775
    if-eqz p3, :cond_3

    .line 776
    const v1, 0x108065b

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    .line 818
    :cond_3
    :goto_2
    return-object v0

    .line 727
    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 728
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 746
    :cond_5
    const-string v1, "WebSelectionControls"

    const-string v2, "WebViewClassic is too short. Cannot turn LEFT handle upside-down"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 750
    :cond_6
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    .line 751
    const v1, 0x108065b

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    .line 754
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 755
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    .line 759
    :cond_7
    iget v1, v0, Landroid/graphics/Point;->y:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 760
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_8

    .line 761
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    goto/16 :goto_1

    .line 763
    :cond_8
    const-string v1, "WebSelectionControls"

    const-string v2, "WebViewClassic is too short. Cannot turn RIGHT handle upside-down"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 780
    :cond_9
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 781
    if-eqz p3, :cond_3

    .line 782
    const v1, 0x108065c

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    goto :goto_2

    .line 786
    :cond_a
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_b

    iget-boolean v1, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-eqz v1, :cond_3

    .line 787
    :cond_b
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 788
    if-eqz p3, :cond_3

    .line 789
    iput v6, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    goto/16 :goto_2

    .line 794
    :cond_c
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v1, v1, 0x5

    if-eqz v1, :cond_f

    .line 796
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_d

    iget-boolean v1, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-eqz v1, :cond_e

    .line 797
    :cond_d
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 798
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 799
    if-eqz p3, :cond_3

    .line 800
    iput v7, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_2

    .line 804
    :cond_e
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 805
    if-eqz p3, :cond_3

    .line 806
    iput v6, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_2

    .line 810
    :cond_f
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_10

    iget-boolean v1, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-eqz v1, :cond_3

    .line 811
    :cond_10
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 812
    if-eqz p3, :cond_3

    .line 813
    const v1, 0x108065c

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_2
.end method

.method private updateHandleSize(IF)V
    .locals 4
    .parameter "granularity"
    .parameter "scale"

    .prologue
    const/high16 v3, 0x4000

    .line 567
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 568
    sget v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 569
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 570
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    .line 584
    :goto_0
    return-void

    .line 572
    :cond_0
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 573
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0

    .line 576
    :cond_1
    sget v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 577
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 578
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0

    .line 580
    :cond_2
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 581
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0
.end method


# virtual methods
.method DrawImageResizeMoveHandlers(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 0
    .parameter "canvas"
    .parameter "outLinePath"
    .parameter "handlesPath"

    .prologue
    .line 833
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/WebTextSelectionControls;->drawImageCroppingControls(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 834
    return-void
.end method

.method DrawImageSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "canvas"
    .parameter "imagetRect"

    .prologue
    .line 898
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 900
    .local v9, scalecont:I
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 901
    .local v7, paintSelected:Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 902
    const/16 v1, 0x80

    const/16 v2, 0x96

    const/16 v3, 0xcb

    const/16 v4, 0xfb

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 903
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 905
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 909
    .local v0, SelectionPath:Landroid/graphics/Path;
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int v8, v1, v2

    .line 910
    .local v8, right:I
    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int v6, v1, v2

    .line 914
    .local v6, bottom:I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v3, v8

    int-to-float v4, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 915
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 916
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 918
    return-void
.end method

.method DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V
    .locals 25
    .parameter "canvas"
    .parameter "copyRegion"
    .parameter "charRegion"
    .parameter "startRect"
    .parameter "endRect"
    .parameter "pressed"
    .parameter "selectionGranularity"
    .parameter "controler"
    .parameter "showController"

    .prologue
    .line 442
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 444
    .local v24, scalecont:I
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 445
    .local v11, paintSelected:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 446
    const/16 v4, 0x80

    const/16 v5, 0x96

    const/16 v6, 0xcb

    const/16 v7, 0xfb

    invoke-virtual {v11, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 447
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v22

    .line 450
    .local v22, scale:F
    const/16 v23, 0x0

    .line 452
    .local v23, scaleLevel:I
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebTextSelectionControls;->updateHandleSize(IF)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 456
    .local v15, rectSelection:Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 457
    .local v17, rectStart:Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-direct {v14, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 459
    .local v14, rectEnd:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 461
    const/4 v4, 0x4

    move/from16 v0, p7

    if-ne v0, v4, :cond_2

    .line 462
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 463
    .local v13, rectContentView:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4, v13}, Landroid/webkit/WebViewClassic;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 465
    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 472
    .local v16, rectSelectionView:Landroid/graphics/Rect;
    iget v9, v15, Landroid/graphics/Rect;->left:I

    .line 473
    .local v9, centerX:I
    iget v4, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 476
    .local v10, centerY:I
    if-nez p6, :cond_1

    .line 477
    const/4 v6, 0x3

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 479
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 480
    iget v10, v15, Landroid/graphics/Rect;->top:I

    .line 481
    const/4 v6, 0x6

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 483
    iget v9, v15, Landroid/graphics/Rect;->right:I

    .line 484
    iget v4, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 485
    const/4 v6, 0x4

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 487
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 488
    iget v10, v15, Landroid/graphics/Rect;->bottom:I

    .line 489
    const/4 v6, 0x5

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 562
    .end local v9           #centerX:I
    .end local v10           #centerY:I
    .end local v13           #rectContentView:Landroid/graphics/Rect;
    .end local v16           #rectSelectionView:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 563
    return-void

    .line 493
    .restart local v9       #centerX:I
    .restart local v10       #centerY:I
    .restart local v13       #rectContentView:Landroid/graphics/Rect;
    .restart local v16       #rectSelectionView:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Landroid/webkit/WebTextSelectionControls;->DrawOutlineParagraph(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 495
    packed-switch p8, :pswitch_data_0

    .line 517
    const-string v4, "WebSelectionControls"

    const-string v5, "Selection controler not set!!! "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :goto_1
    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p8

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    goto :goto_0

    .line 497
    :pswitch_0
    iget v9, v15, Landroid/graphics/Rect;->left:I

    .line 498
    iget v4, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 499
    goto :goto_1

    .line 502
    :pswitch_1
    iget v9, v15, Landroid/graphics/Rect;->right:I

    .line 503
    iget v4, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 504
    goto :goto_1

    .line 507
    :pswitch_2
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 508
    iget v10, v15, Landroid/graphics/Rect;->bottom:I

    .line 509
    goto :goto_1

    .line 512
    :pswitch_3
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 513
    iget v10, v15, Landroid/graphics/Rect;->top:I

    .line 514
    goto :goto_1

    .line 524
    .end local v9           #centerX:I
    .end local v10           #centerY:I
    .end local v13           #rectContentView:Landroid/graphics/Rect;
    .end local v16           #rectSelectionView:Landroid/graphics/Rect;
    :cond_2
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 525
    .local v21, rtStart:Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 526
    .local v20, rtMiddle:Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 530
    .local v19, rtEnd:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 531
    iget v4, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v15, Landroid/graphics/Rect;->right:I

    iget v7, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 532
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v14, Landroid/graphics/Rect;->top:I

    iget v6, v14, Landroid/graphics/Rect;->right:I

    iget v7, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 537
    if-eqz p3, :cond_4

    .line 538
    new-instance v18, Landroid/graphics/Region;

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    .line 547
    .local v18, regionSelection:Landroid/graphics/Region;
    :goto_2
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 548
    .local v12, pathSelection:Landroid/graphics/Path;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    .line 549
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 554
    if-eqz p9, :cond_0

    .line 555
    if-eqz p6, :cond_3

    .line 556
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v14, v3}, Landroid/webkit/WebTextSelectionControls;->drawOutlineChar(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 558
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v14, v3}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    .line 540
    .end local v12           #pathSelection:Landroid/graphics/Path;
    .end local v18           #regionSelection:Landroid/graphics/Region;
    :cond_4
    new-instance v18, Landroid/graphics/Region;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Region;-><init>()V

    .line 541
    .restart local v18       #regionSelection:Landroid/graphics/Region;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 542
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 543
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_2

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "text"
    .parameter "value"
    .parameter "Start"
    .parameter "End"

    .prologue
    .line 253
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 254
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 255
    iput-object p3, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 256
    iput-object p4, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 257
    return-void
.end method

.method public drawImageCroppingControls(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 12
    .parameter "canvas"
    .parameter "outLinePath"
    .parameter "handlesPath"

    .prologue
    .line 840
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 841
    .local v2, paint:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 842
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 843
    const/high16 v8, 0x3f80

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 844
    const v8, -0xffff01

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 846
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 847
    .local v3, paintForHandles:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 848
    const v8, -0xffff01

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 849
    sget-object v8, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 850
    const/high16 v8, 0x4080

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 851
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 855
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 856
    .local v4, re:Landroid/graphics/RectF;
    const/4 v8, 0x1

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 859
    const/16 v0, 0x14

    .line 860
    .local v0, delta:I
    iget v8, v4, Landroid/graphics/RectF;->left:F

    iget v9, v4, Landroid/graphics/RectF;->right:F

    iget v10, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 861
    .local v6, xcenter:I
    iget v8, v4, Landroid/graphics/RectF;->top:F

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    iget v10, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v7, v8

    .line 862
    .local v7, ycenter:I
    const/4 v1, 0x0

    .line 863
    .local v1, handle:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080621

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 864
    iget v8, v4, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, v4, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, v4, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 865
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 866
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080621

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 867
    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, v4, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 868
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 869
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080621

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 870
    iget v8, v4, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, v4, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 871
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 872
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080621

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 873
    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v4, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    iget v10, v4, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    iget v11, v4, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 874
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 876
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080621

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 877
    sub-int v8, v6, v0

    iget v9, v4, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    add-int v10, v6, v0

    iget v11, v4, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 878
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 879
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080621

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 880
    sub-int v8, v6, v0

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    sub-int/2addr v9, v0

    add-int v10, v6, v0

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v11, v11

    add-int/2addr v11, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 881
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 882
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080621

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 883
    iget v8, v4, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    sub-int v9, v7, v0

    iget v10, v4, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    add-int v11, v7, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 884
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 885
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080621

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 886
    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    sub-int v9, v7, v0

    iget v10, v4, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    add-int v11, v7, v0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 887
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 889
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 890
    .local v5, reh:Landroid/graphics/RectF;
    const/4 v8, 0x1

    invoke-virtual {p3, v5, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 892
    return-void
.end method

.method getHandleCrossing()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    return v0
.end method

.method getHandleExtendPoint(IIILandroid/webkit/WebViewCore$SelectionCopiedData;)Landroid/graphics/Point;
    .locals 5
    .parameter "contentX"
    .parameter "contentY"
    .parameter "handleType"
    .parameter "copyInfo"

    .prologue
    .line 363
    if-nez p4, :cond_1

    .line 364
    const/4 v3, 0x0

    .line 426
    :cond_0
    :goto_0
    return-object v3

    .line 367
    :cond_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 368
    .local v3, value:Landroid/graphics/Point;
    const/4 v0, 0x0

    .line 369
    .local v0, deltaX:I
    const/4 v1, 0x0

    .line 370
    .local v1, deltaY:I
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 372
    .local v2, selectRect:Landroid/graphics/Rect;
    const/4 v4, 0x1

    if-ne v4, p3, :cond_5

    .line 373
    iget v4, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_3

    iget-boolean v4, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-nez v4, :cond_3

    .line 374
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v1, v4, p2

    .line 375
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v4, :cond_2

    .line 376
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v4, p2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 377
    :cond_2
    if-lez v1, :cond_0

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v4, :cond_0

    .line 378
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 382
    :cond_3
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v4

    .line 383
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v4, :cond_4

    .line 384
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 385
    :cond_4
    if-lez v1, :cond_0

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v4, :cond_0

    .line 386
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 390
    :cond_5
    const/4 v4, 0x2

    if-ne v4, p3, :cond_9

    .line 391
    iget v4, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_7

    iget-boolean v4, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-nez v4, :cond_7

    .line 392
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v4

    .line 393
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v4, :cond_6

    .line 394
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 395
    :cond_6
    if-lez v1, :cond_0

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v4, :cond_0

    .line 396
    sub-int v4, p2, v1

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 400
    :cond_7
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v1, v4, p2

    .line 401
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v4, :cond_8

    .line 402
    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v4, p2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 403
    :cond_8
    if-lez v1, :cond_0

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v4, :cond_0

    .line 404
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 408
    :cond_9
    const/4 v4, 0x5

    if-eq v4, p3, :cond_a

    const/4 v4, 0x6

    if-ne v4, p3, :cond_c

    .line 409
    :cond_a
    if-lez p1, :cond_b

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-ge p1, v4, :cond_b

    .line 410
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 411
    :cond_b
    if-lez p1, :cond_0

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-le p1, v4, :cond_0

    .line 412
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 414
    :cond_c
    const/4 v4, 0x3

    if-eq v4, p3, :cond_d

    const/4 v4, 0x4

    if-ne v4, p3, :cond_0

    .line 415
    :cond_d
    if-lez p2, :cond_e

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge p2, v4, :cond_e

    .line 416
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 417
    :cond_e
    if-lez p2, :cond_0

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-le p2, v4, :cond_0

    .line 418
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0
.end method

.method getHandleHeight()I
    .locals 1

    .prologue
    .line 272
    sget v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return v0
.end method

.method public getHandleState(I)I
    .locals 3
    .parameter "handleType"

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_0

    .line 176
    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandleState : Unsupported handle type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 171
    :pswitch_0
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    goto :goto_0

    .line 173
    :pswitch_1
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getHandleType(IILandroid/webkit/WebViewCore$SelectionCopiedData;)I
    .locals 14
    .parameter "ptX"
    .parameter "ptY"
    .parameter "copyInfo"

    .prologue
    .line 281
    if-nez p3, :cond_0

    .line 283
    const/4 v11, 0x0

    .line 358
    :goto_0
    return v11

    .line 286
    :cond_0
    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 287
    .local v2, controllerWidth:I
    sget v1, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    .line 288
    .local v1, controllerHeight:I
    const/4 v6, 0x0

    .local v6, selectX:I
    const/4 v7, 0x0

    .line 290
    .local v7, selectY:I
    move-object/from16 v0, p3

    iget v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_5

    .line 291
    new-instance v8, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v11, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 293
    .local v8, selectionCtrl:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 294
    .local v5, selectRect:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v11, :cond_1

    .line 295
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v11}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 298
    :cond_1
    if-eqz v5, :cond_7

    .line 300
    div-int/lit8 v9, v2, 0x2

    .line 301
    .local v9, xRadius:I
    div-int/lit8 v10, v1, 0x2

    .line 304
    .local v10, yRadius:I
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    .line 305
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 306
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 307
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 308
    const/4 v11, 0x5

    goto :goto_0

    .line 311
    :cond_2
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 312
    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    div-int/lit8 v7, v11, 0x2

    .line 313
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 314
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 315
    const/4 v11, 0x3

    goto :goto_0

    .line 318
    :cond_3
    iget v6, v5, Landroid/graphics/Rect;->right:I

    .line 319
    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    div-int/lit8 v7, v11, 0x2

    .line 320
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 321
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 322
    const/4 v11, 0x4

    goto :goto_0

    .line 325
    :cond_4
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    .line 326
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 327
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 328
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 329
    const/4 v11, 0x6

    goto/16 :goto_0

    .line 332
    .end local v5           #selectRect:Landroid/graphics/Rect;
    .end local v8           #selectionCtrl:Landroid/graphics/Rect;
    .end local v9           #xRadius:I
    .end local v10           #yRadius:I
    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v4, v11, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 336
    .local v4, rtCtrlTouchArea:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_6

    .line 337
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    .line 338
    .local v3, pos:Landroid/graphics/Point;
    iget v11, v3, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 341
    move/from16 v0, p2

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 342
    const/4 v11, 0x2

    goto/16 :goto_0

    .line 347
    .end local v3           #pos:Landroid/graphics/Point;
    :cond_6
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_7

    .line 348
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    .line 349
    .restart local v3       #pos:Landroid/graphics/Point;
    iget v11, v3, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 352
    move/from16 v0, p2

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 353
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 358
    .end local v3           #pos:Landroid/graphics/Point;
    .end local v4           #rtCtrlTouchArea:Landroid/graphics/Rect;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method getHandleWidth()I
    .locals 1

    .prologue
    .line 276
    sget v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    return v0
.end method

.method getSelectionBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "rt"

    .prologue
    .line 227
    move-object v7, p1

    .line 228
    .local v7, rtSelection:Landroid/graphics/Rect;
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v9, v7, Landroid/graphics/Rect;->right:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v3

    .line 229
    .local v3, bitmapwidth:I
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->viewToContentDimension(I)I

    move-result v2

    .line 230
    .local v2, bitmapheight:I
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v9, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->viewToContentXf(I)F

    move-result v4

    .line 231
    .local v4, bitmapx:F
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewClassic;->viewToContentYf(I)F

    move-result v5

    .line 240
    .local v5, bitmapy:F
    iget-object v8, p0, Landroid/webkit/WebTextSelectionControls;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v6

    .line 241
    .local v6, picture:Landroid/graphics/Picture;
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 244
    .local v1, bitmapCanvas:Landroid/graphics/Canvas;
    neg-float v8, v4

    neg-float v9, v5

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    invoke-virtual {v6, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 246
    return-object v0
.end method

.method public getSelectionCursorRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionEndRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionStartRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    return-object v0
.end method

.method public saveImage(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "filepath"
    .parameter "rt"

    .prologue
    .line 203
    invoke-virtual {p0, p2}, Landroid/webkit/WebTextSelectionControls;->getSelectionBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v2, mFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 210
    :cond_0
    const/4 v3, 0x0

    .line 213
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    .end local v3           #out:Ljava/io/FileOutputStream;
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 219
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v3, :cond_1

    .line 220
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 224
    :cond_1
    :goto_1
    return-void

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 215
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method setHandleCrossing(Z)V
    .locals 0
    .parameter "crossing"

    .prologue
    .line 260
    iput-boolean p1, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    .line 261
    return-void
.end method

.method public setHandleState(II)V
    .locals 3
    .parameter "handleType"
    .parameter "state"

    .prologue
    .line 187
    packed-switch p1, :pswitch_data_0

    .line 197
    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHandleState : Unsupported handle type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iput p2, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    goto :goto_0

    .line 193
    :pswitch_1
    iput p2, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method toggleHandleCrossing()V
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebTextSelectionControls;->mHandleCrossing:Z

    .line 269
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
