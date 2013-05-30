.class public Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLDeviceListMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;
    }
.end annotation


# static fields
.field private static final ANCHOR_HEIGHT:I

.field private static final ITEM_HEIGHT:I

.field private static final LEFT_ITEM_INTERVAL:I

.field private static final LEFT_ITEM_START_POS_Y:I

.field public static final LIST_ITEM_HEIGHT:I

.field private static final LIST_POS_X:I

.field public static final MENU_HEIGHT:I

.field private static final MENU_POS_X:I

.field private static final MENU_POS_Y:I

.field public static final MENU_WIDTH:I

.field private static final NUM_OF_LEFT_SIDE_MENU:I

.field private static final SIDEMENU_HEIGHT:I

.field private static final SIDEMENU_WIDTH:I

.field private static final TITLE_FONT_SIZE:F

.field public static final TITLE_HEIGHT:I

.field private static final TITLE_LEFT_PADDING:I

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TOP_PADDING:I


# instance fields
.field private mActivityConetxt:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mDevAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0xff

    .line 49
    const v0, 0x7f060147

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_X:I

    .line 50
    const v0, 0x7f060148

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    .line 51
    const v0, 0x7f06014e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    .line 52
    const v0, 0x7f06014f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_HEIGHT:I

    .line 53
    const v0, 0x7f060149

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    .line 54
    const v0, 0x7f06014a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_LEFT_PADDING:I

    .line 55
    const v0, 0x7f06014b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_TOP_PADDING:I

    .line 56
    const v0, 0x7f080018

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_FONT_SIZE:F

    .line 57
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_TEXT_COLOR:I

    .line 58
    const v0, 0x7f06001c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LIST_POS_X:I

    .line 59
    const v0, 0x7f06014d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LIST_ITEM_HEIGHT:I

    .line 62
    const v0, 0x7f060090

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->SIDEMENU_WIDTH:I

    .line 63
    const v0, 0x7f060091

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->SIDEMENU_HEIGHT:I

    .line 64
    const v0, 0x7f060096

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LEFT_ITEM_START_POS_Y:I

    .line 65
    const v0, 0x7f060093

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->ITEM_HEIGHT:I

    .line 66
    const v0, 0x7f080010

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->NUM_OF_LEFT_SIDE_MENU:I

    .line 67
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->SIDEMENU_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LEFT_ITEM_START_POS_Y:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->ITEM_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->NUM_OF_LEFT_SIDE_MENU:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->NUM_OF_LEFT_SIDE_MENU:I

    div-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LEFT_ITEM_INTERVAL:I

    .line 68
    const v0, 0x7f0600a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->ANCHOR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 10
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "resourceData"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "slideDirection"

    .prologue
    .line 77
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 73
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 79
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityConetxt:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 81
    new-instance v1, Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 82
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_LEFT_PADDING:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_TOP_PADDING:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_LEFT_PADDING:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_TOP_PADDING:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09010f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_FONT_SIZE:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    .line 85
    .local v1, title:Lcom/sec/android/glview/TwGLText;
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 86
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 87
    new-instance v2, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LIST_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 88
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityConetxt:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserCount()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v3, 0x7f020208

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$1;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 93
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTag(I)V

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setRotatable(Z)V

    .line 96
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    .line 98
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 99
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setLeftTop()V

    .line 103
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    move/from16 v0, p7

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 104
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    move/from16 v0, p7

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 106
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 107
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 109
    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->SIDEMENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LEFT_ITEM_START_POS_Y:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->ITEM_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LEFT_ITEM_INTERVAL:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->ITEM_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->ANCHOR_HEIGHT:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    const v6, 0x7f020202

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 113
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 115
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityConetxt:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 202
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 194
    :cond_0
    return v2
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iput-object v2, v0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iput-object v2, v0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 175
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 176
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->refreshMenuPosition()V

    .line 212
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 208
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showWaitingAnimation()V

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->refreshMenuPosition()V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iput-object v1, v0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iput-object v1, v0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->refreshDeviceList()V

    .line 162
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 163
    return-void
.end method

.method public refreshMenuPosition()V
    .locals 14

    .prologue
    .line 216
    const/4 v7, 0x6

    .line 217
    .local v7, padding:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->getZorder()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setListBackgrouond(I)V

    .line 219
    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    int-to-float v8, v11

    .line 220
    .local v8, top:F
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeftTop(I)[F

    move-result-object v11

    const/4 v12, 0x0

    aget v4, v11, v12

    .line 221
    .local v4, left_1:F
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeftTop(I)[F

    move-result-object v11

    const/4 v12, 0x1

    aget v9, v11, v12

    .line 222
    .local v9, top_1:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setLeftTop()V

    .line 223
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeftTop(I)[F

    move-result-object v11

    const/4 v12, 0x0

    aget v5, v11, v12

    .line 224
    .local v5, left_2:F
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeftTop(I)[F

    move-result-object v11

    const/4 v12, 0x1

    aget v10, v11, v12

    .line 226
    .local v10, top_2:F
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v11, :cond_6

    .line 227
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 235
    :pswitch_0
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v1

    .line 238
    .local v1, height:F
    :goto_0
    add-float v0, v8, v1

    .line 240
    .local v0, bottom:F
    sub-float v2, v5, v4

    .line 241
    .local v2, interval_left:F
    sub-float v3, v10, v9

    .line 243
    .local v3, interval_top:F
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v11

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float v12, v1, v12

    add-float/2addr v12, v8

    sub-float v6, v11, v12

    .line 244
    .local v6, move:F
    add-float v11, v8, v6

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_4

    .line 245
    neg-float v11, v8

    int-to-float v12, v7

    add-float v6, v11, v12

    .line 249
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->resetTranslate()V

    .line 250
    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-gtz v11, :cond_1

    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_5

    .line 251
    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    .line 254
    :goto_2
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    .line 255
    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-gtz v11, :cond_2

    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_3

    .line 256
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOrientation(I)V

    .line 295
    .end local v0           #bottom:F
    .end local v1           #height:F
    .end local v2           #interval_left:F
    .end local v3           #interval_top:F
    .end local v6           #move:F
    :cond_3
    :goto_3
    return-void

    .line 230
    :pswitch_1
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v1

    .line 231
    .restart local v1       #height:F
    goto :goto_0

    .line 246
    .restart local v0       #bottom:F
    .restart local v2       #interval_left:F
    .restart local v3       #interval_top:F
    .restart local v6       #move:F
    :cond_4
    add-float v11, v0, v6

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v12

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_0

    .line 247
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v0

    int-to-float v12, v7

    sub-float v6, v11, v12

    goto :goto_1

    .line 253
    :cond_5
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    goto :goto_2

    .line 258
    .end local v0           #bottom:F
    .end local v1           #height:F
    .end local v2           #interval_left:F
    .end local v3           #interval_top:F
    .end local v6           #move:F
    :cond_6
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v11, :cond_3

    .line 261
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLImage;->getVisibility()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_7

    .line 262
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 264
    :cond_7
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v11

    packed-switch v11, :pswitch_data_1

    .line 272
    :pswitch_2
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v1

    .line 275
    .restart local v1       #height:F
    :goto_4
    add-float v0, v8, v1

    .line 277
    .restart local v0       #bottom:F
    sub-float v2, v5, v4

    .line 278
    .restart local v2       #interval_left:F
    sub-float v3, v10, v9

    .line 280
    .restart local v3       #interval_top:F
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v11

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mDevAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float v12, v1, v12

    add-float/2addr v12, v8

    sub-float v6, v11, v12

    .line 281
    .restart local v6       #move:F
    add-float v11, v8, v6

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_b

    .line 282
    neg-float v11, v8

    int-to-float v12, v7

    add-float v6, v11, v12

    .line 286
    :cond_8
    :goto_5
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->resetTranslate()V

    .line 287
    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-gtz v11, :cond_9

    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_c

    .line 288
    :cond_9
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    .line 291
    :goto_6
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    .line 292
    const/4 v11, 0x0

    cmpl-float v11, v2, v11

    if-gtz v11, :cond_a

    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-lez v11, :cond_3

    .line 293
    :cond_a
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOrientation(I)V

    goto/16 :goto_3

    .line 267
    .end local v0           #bottom:F
    .end local v1           #height:F
    .end local v2           #interval_left:F
    .end local v3           #interval_top:F
    .end local v6           #move:F
    :pswitch_3
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v1

    .line 268
    .restart local v1       #height:F
    goto :goto_4

    .line 283
    .restart local v0       #bottom:F
    .restart local v2       #interval_left:F
    .restart local v3       #interval_top:F
    .restart local v6       #move:F
    :cond_b
    add-float v11, v0, v6

    iget-object v12, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v12

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_8

    .line 284
    iget-object v11, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v0

    int-to-float v12, v7

    sub-float v6, v11, v12

    goto :goto_5

    .line 290
    :cond_c
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v11, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    goto :goto_6

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 264
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setLeftTop()V
    .locals 5

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 121
    return-void
.end method

.method public setListBackgrouond(I)V
    .locals 2
    .parameter "zOrder"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f020203

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    .line 125
    return-void
.end method
