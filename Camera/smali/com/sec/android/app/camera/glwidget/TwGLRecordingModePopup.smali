.class public Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLRecordingModePopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final LIST_ITEM_HEIGHT:I

.field private static final LIST_ITEM_WIDTH:I

.field private static final MENU_HEIGHT:I

.field private static final MENU_POS_X:I

.field private static final MENU_WIDTH:I

.field private static final TITLE_FONT_SIZE:F

.field private static final TITLE_HEIGHT:I

.field private static final TITLE_LEFT_PADDING:I

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TOP_PADDING:I


# instance fields
.field private MENU_POS_Y:I

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 45
    const v0, 0x7f06014e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->MENU_WIDTH:I

    .line 46
    const v0, 0x7f06014f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->MENU_HEIGHT:I

    .line 47
    const v0, 0x7f060149

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_HEIGHT:I

    .line 48
    const v0, 0x7f06014a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_LEFT_PADDING:I

    .line 49
    const v0, 0x7f06014b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_TOP_PADDING:I

    .line 50
    const v0, 0x7f080018

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_FONT_SIZE:F

    .line 51
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_TEXT_COLOR:I

    .line 52
    const v0, 0x7f06014c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->LIST_ITEM_WIDTH:I

    .line 53
    const v0, 0x7f06014d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->LIST_ITEM_HEIGHT:I

    .line 54
    const v0, 0x7f060072

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->MENU_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->MENU_POS_X:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 63
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 55
    const v1, 0x7f060073

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->LIST_ITEM_HEIGHT:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->MENU_POS_Y:I

    .line 65
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    const/16 v2, 0xbb9

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 67
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->MENU_POS_Y:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->LIST_ITEM_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->MENU_POS_Y:I

    .line 79
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->MENU_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->MENU_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->MENU_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 80
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_LEFT_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_TOP_PADDING:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->MENU_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_LEFT_PADDING:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_TOP_PADDING:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    .line 83
    .local v0, title:Lcom/sec/android/glview/TwGLText;
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 84
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 85
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v2, 0x7f020205

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    .line 87
    new-instance v1, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->MENU_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->TITLE_HEIGHT:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mList:Lcom/sec/android/glview/TwGLList;

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mList:Lcom/sec/android/glview/TwGLList;

    const v2, 0x7f020208

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup$TwGLMenuAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup$1;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1, p2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTag(I)V

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setRotatable(Z)V

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setCenterPivot(Z)V

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setDragSensitivity(I)V

    .line 98
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 99
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->LIST_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->mList:Lcom/sec/android/glview/TwGLList;

    .line 105
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 106
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 148
    :cond_0
    return v1
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 141
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->getZorder()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 155
    .local v0, depth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->getZorder()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 156
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 159
    .end local v0           #depth:I
    .local v1, depth:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #depth:I
    .restart local v0       #depth:I
    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    move v1, v0

    .end local v0           #depth:I
    .restart local v1       #depth:I
    goto :goto_0

    .line 162
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
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 136
    return-void
.end method
