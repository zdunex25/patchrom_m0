.class public Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLContextMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final MENU_EDIT_BUTTON_POS_X:I

.field private static final MENU_EDIT_BUTTON_POS_Y:I

.field private static final MENU_EDIT_FONT_COLOR:I

.field private static final MENU_EDIT_FONT_SIZE:I

.field private static final MENU_EDIT_LANDSCAPE_BUTTON_RESOURCE_POS_X:I

.field private static final MENU_EDIT_LANDSCAPE_BUTTON_RESOURCE_POS_Y:I

.field private static final MENU_EDIT_LANDSCAPE_TEXT_POS_X:I

.field private static final MENU_EDIT_LANDSCAPE_TEXT_POS_Y:I

.field private static final MENU_EDIT_PORTRAIT_BUTTON_RESOURCE_POS_X:I

.field private static final MENU_EDIT_PORTRAIT_BUTTON_RESOURCE_POS_Y:I

.field private static final MENU_EDIT_PORTRAIT_TEXT_POS_X:I

.field private static final MENU_EDIT_PORTRAIT_TEXT_POS_Y:I

.field private static final MENU_EDIT_TEXT_HEIGHT:I

.field private static final MENU_EDIT_TEXT_WIDTH:I

.field private static final MENU_LANDSCAPE_HEIGHT:I

.field private static final MENU_LANDSCAPE_POS_X:I

.field private static final MENU_LANDSCAPE_POS_Y:I

.field private static final MENU_LANDSCAPE_WIDTH:I

.field private static final MENU_PORTRAIT_HEIGHT:I

.field private static final MENU_PORTRAIT_POS_X:I

.field private static final MENU_PORTRAIT_POS_Y:I

.field private static final MENU_PORTRAIT_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

.field private mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPortraitButton:Lcom/sec/android/glview/TwGLButton;

.field private mText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 30
    const v0, 0x7f060110

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_LANDSCAPE_POS_X:I

    .line 31
    const v0, 0x7f060111

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_LANDSCAPE_POS_Y:I

    .line 32
    const v0, 0x7f060112

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_LANDSCAPE_WIDTH:I

    .line 33
    const v0, 0x7f060113

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_LANDSCAPE_HEIGHT:I

    .line 34
    const v0, 0x7f060114

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_PORTRAIT_POS_X:I

    .line 35
    const v0, 0x7f060115

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_PORTRAIT_POS_Y:I

    .line 36
    const v0, 0x7f060116

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_PORTRAIT_WIDTH:I

    .line 37
    const v0, 0x7f060117

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_PORTRAIT_HEIGHT:I

    .line 38
    const v0, 0x7f060118

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_BUTTON_POS_X:I

    .line 39
    const v0, 0x7f060119

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_BUTTON_POS_Y:I

    .line 40
    const v0, 0x7f06011b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_TEXT_WIDTH:I

    .line 41
    const v0, 0x7f06011c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_TEXT_HEIGHT:I

    .line 42
    const v0, 0x7f080014

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_FONT_SIZE:I

    .line 43
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_FONT_COLOR:I

    .line 44
    const v0, 0x7f06011d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_LANDSCAPE_BUTTON_RESOURCE_POS_X:I

    .line 45
    const v0, 0x7f06011e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_LANDSCAPE_BUTTON_RESOURCE_POS_Y:I

    .line 46
    const v0, 0x7f06011f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_LANDSCAPE_TEXT_POS_X:I

    .line 47
    const v0, 0x7f060120

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_LANDSCAPE_TEXT_POS_Y:I

    .line 48
    const v0, 0x7f060121

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_PORTRAIT_BUTTON_RESOURCE_POS_X:I

    .line 49
    const v0, 0x7f060122

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_PORTRAIT_BUTTON_RESOURCE_POS_Y:I

    .line 50
    const v0, 0x7f060123

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_PORTRAIT_TEXT_POS_X:I

    .line 51
    const v0, 0x7f060124

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_PORTRAIT_TEXT_POS_Y:I

    .line 52
    const v0, 0x7f06006d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->SCREEN_WIDTH:I

    .line 53
    const v0, 0x7f06006e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->SCREEN_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 12
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "resourceData"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "slideDirection"

    .prologue
    .line 65
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 67
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 69
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v2, 0xe74

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v11

    .line 73
    .local v11, res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_LANDSCAPE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_LANDSCAPE_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_LANDSCAPE_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_LANDSCAPE_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 75
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_BUTTON_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_LANDSCAPE_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_LANDSCAPE_HEIGHT:I

    int-to-float v6, v6

    iget v7, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v8, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v9, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const v10, 0x7f02027b

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_LANDSCAPE_BUTTON_RESOURCE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_LANDSCAPE_BUTTON_RESOURCE_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 78
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_TEXT_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_TEXT_HEIGHT:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v8, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_FONT_SIZE:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mText:Lcom/sec/android/glview/TwGLText;

    .line 80
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 81
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_LANDSCAPE_TEXT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_LANDSCAPE_TEXT_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 83
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0xe74

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 84
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 85
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 87
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_BUTTON_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_PORTRAIT_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_PORTRAIT_HEIGHT:I

    int-to-float v6, v6

    iget v7, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v8, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v9, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const v10, 0x7f02027b

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_PORTRAIT_BUTTON_RESOURCE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_PORTRAIT_BUTTON_RESOURCE_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 90
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_TEXT_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_TEXT_HEIGHT:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v8, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_FONT_SIZE:I

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mText:Lcom/sec/android/glview/TwGLText;

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_PORTRAIT_TEXT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_EDIT_PORTRAIT_TEXT_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0xe74

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const v2, 0x7f02027c

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 101
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 102
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setInternalFocus(Z)V

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setInternalFocus(Z)V

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_PORTRAIT_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_PORTRAIT_WIDTH:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_LANDSCAPE_POS_X:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_LANDSCAPE_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_PORTRAIT_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->MENU_PORTRAIT_POS_X:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->initAnimation(I)V

    .line 117
    return-void
.end method

.method private initAnimation(I)V
    .locals 14
    .parameter "orientation"

    .prologue
    const/4 v6, 0x1

    const/high16 v13, 0x3f80

    const-wide/16 v11, 0x12c

    const/4 v10, 0x0

    .line 120
    const/4 v4, 0x0

    .line 122
    .local v4, slideInAnim:Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 123
    .local v3, ShowAnim:Landroid/view/animation/AnimationSet;
    const/4 v5, 0x0

    .line 125
    .local v5, slideOutAnim:Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 128
    .local v2, HideAnim:Landroid/view/animation/AnimationSet;
    packed-switch p1, :pswitch_data_0

    .line 147
    :goto_0
    if-eqz v4, :cond_0

    .line 148
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 149
    invoke-virtual {v4, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 150
    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 151
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 152
    invoke-virtual {v5, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 153
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 156
    :cond_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v10, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 157
    .local v1, AlphaOnAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v1, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 158
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 160
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v13, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 161
    .local v0, AlphaOffAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 162
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 164
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 165
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 166
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 167
    return-void

    .line 130
    .end local v0           #AlphaOffAnimation:Landroid/view/animation/Animation;
    .end local v1           #AlphaOnAnimation:Landroid/view/animation/Animation;
    :pswitch_0
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .end local v4           #slideInAnim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    invoke-direct {v4, v10, v10, v6, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 131
    .restart local v4       #slideInAnim:Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5           #slideOutAnim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    invoke-direct {v5, v10, v10, v10, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 132
    .restart local v5       #slideOutAnim:Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 134
    :pswitch_1
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .end local v4           #slideInAnim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    neg-float v6, v6

    invoke-direct {v4, v6, v10, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 135
    .restart local v4       #slideInAnim:Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5           #slideOutAnim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    neg-float v6, v6

    invoke-direct {v5, v10, v6, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 136
    .restart local v5       #slideOutAnim:Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 138
    :pswitch_2
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .end local v4           #slideInAnim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    neg-float v6, v6

    invoke-direct {v4, v10, v10, v6, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 139
    .restart local v4       #slideInAnim:Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5           #slideOutAnim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    neg-float v6, v6

    invoke-direct {v5, v10, v10, v10, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 140
    .restart local v5       #slideOutAnim:Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 142
    :pswitch_3
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .end local v4           #slideInAnim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    invoke-direct {v4, v6, v10, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 143
    .restart local v4       #slideInAnim:Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5           #slideOutAnim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    invoke-direct {v5, v10, v6, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v5       #slideOutAnim:Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 228
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 4
    .parameter "v"

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 189
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 183
    const/16 v0, 0x28

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 187
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    const/16 v0, 0xbd1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_1

    .line 179
    :pswitch_data_0
    .packed-switch 0xe74
        :pswitch_0
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 194
    packed-switch p1, :pswitch_data_0

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 212
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->initAnimation(I)V

    .line 213
    return-void

    .line 197
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 234
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isVisible()I

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mLandscapeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLContextMenu;->mPortraitButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    goto :goto_0
.end method
