.class public Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLThumnailListMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final MENU_HEIGHT:I

.field private static final MENU_POS_X:I

.field private static final MENU_POS_Y:I

.field private static final MENU_WIDTH:I

.field private static final THUMBNAIL_ITEM_HEIGHT:I

.field private static final THUMBNAIL_ITEM_WIDTH:I


# instance fields
.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f060147

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->MENU_POS_X:I

    .line 44
    const v0, 0x7f060148

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->MENU_POS_Y:I

    .line 45
    const v0, 0x7f060063

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->MENU_WIDTH:I

    .line 46
    const v0, 0x7f060152

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->MENU_HEIGHT:I

    .line 47
    const v0, 0x7f060064

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->THUMBNAIL_ITEM_WIDTH:I

    .line 48
    const v0, 0x7f060065

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->THUMBNAIL_ITEM_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 7
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "resourceData"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "slideDirection"

    .prologue
    const/4 v6, 0x1

    .line 56
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 58
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 59
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->MENU_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 61
    new-instance v0, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->MENU_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v1, 0x7f020208

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$TwGLMenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020206

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {v0, p7, v6}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {v0, p7, v6}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->MENU_WIDTH:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->THUMBNAIL_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->THUMBNAIL_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 80
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 81
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 151
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->getFirstFullyVisibleViewIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 143
    :cond_1
    return v2
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 123
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 124
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->refreshMenuPosition()V

    .line 168
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->getZorder()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 158
    .local v0, depth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->getZorder()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 159
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 161
    .end local v0           #depth:I
    .local v1, depth:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #depth:I
    .restart local v0       #depth:I
    if-lez v1, :cond_0

    .line 162
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    move v1, v0

    .end local v0           #depth:I
    .restart local v1       #depth:I
    goto :goto_0

    .line 164
    .end local v1           #depth:I
    .restart local v0       #depth:I
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .end local v0           #depth:I
    .restart local v1       #depth:I
    goto :goto_0
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showWaitingAnimation()V

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->refreshMenuPosition()V

    .line 115
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 116
    return-void
.end method

.method public refreshMenuPosition()V
    .locals 9

    .prologue
    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 172
    const/4 v3, 0x6

    .line 174
    .local v3, padding:I
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->MENU_POS_Y:I

    int-to-float v4, v5

    .line 176
    .local v4, top:F
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v5, :cond_1

    .line 177
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getOrientation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 185
    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v1

    .line 188
    .local v1, height:F
    :goto_0
    add-float v0, v4, v1

    .line 190
    .local v0, bottom:F
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v6

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    div-float v6, v1, v8

    add-float/2addr v6, v4

    sub-float v2, v5, v6

    .line 191
    .local v2, move:F
    add-float v5, v4, v2

    cmpg-float v5, v5, v7

    if-gez v5, :cond_2

    .line 192
    neg-float v5, v4

    int-to-float v6, v3

    add-float v2, v5, v6

    .line 196
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5, v7, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 198
    .end local v0           #bottom:F
    .end local v1           #height:F
    .end local v2           #move:F
    :cond_1
    return-void

    .line 180
    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v1

    .line 181
    .restart local v1       #height:F
    goto :goto_0

    .line 193
    .restart local v0       #bottom:F
    .restart local v2       #move:F
    :cond_2
    add-float v5, v0, v2

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 194
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    int-to-float v6, v3

    sub-float v2, v5, v6

    goto :goto_1

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
