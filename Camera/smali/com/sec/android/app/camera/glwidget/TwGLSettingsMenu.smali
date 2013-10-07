.class public Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSettingsMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MENU_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MENU_PORTRAIT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MENU_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MENU_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MENU_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwGLSettingsMenu"

.field private static final TITLE_FONT_SIZE:F

.field private static final TITLE_HEIGHT:I

.field private static final TITLE_LEFT_PADDING:I

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TOP_PADDING:I


# instance fields
.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mItemList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSelectedSettingMenuId:I

.field private mShowAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f070226

    const v2, 0x7f070225

    const/16 v1, 0xff

    .line 53
    const v0, 0x7f070179

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_X:I

    .line 54
    const v0, 0x7f070221

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_Y:I

    .line 55
    const v0, 0x7f070222

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    .line 56
    const v0, 0x7f070223

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_LEFT_PADDING:I

    .line 57
    const v0, 0x7f070224

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TOP_PADDING:I

    .line 58
    const v0, 0x7f08001d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_FONT_SIZE:F

    .line 59
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TEXT_COLOR:I

    .line 60
    const v0, 0x7f070228

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_POS_X:I

    .line 61
    const v0, 0x7f070229

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_POS_Y:I

    .line 62
    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_WIDTH:I

    .line 63
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_HEIGHT:I

    .line 64
    const v0, 0x7f070126

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_BUTTON_HEIGHT:I

    .line 65
    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    .line 66
    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    .line 69
    const v0, 0x7f070227

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_PORTRAIT_HEIGHT:I

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
    .line 85
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 76
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    .line 78
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    .line 80
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 81
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 89
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 91
    new-instance v1, Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v3, 0x7f0201b8

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    .line 94
    goto/16 :goto_1

    .line 95
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TOP_PADDING:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_LEFT_PADDING:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TOP_PADDING:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_FONT_SIZE:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    .line 98
    .local v1, title:Lcom/sec/android/glview/TwGLText;
    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 106
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 107
    new-instance v2, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_POS_Y:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 108
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v3, 0x7f0201bc

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 109
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 110
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTag(I)V

    .line 113
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setRotatable(Z)V

    .line 115
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    .line 116
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOrientation(I)V

    .line 117
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 118
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 120
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_PORTRAIT_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_Y:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 121
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_Y:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 122
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_Y:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 124
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    move/from16 v0, p7

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 125
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    move/from16 v0, p7

    invoke-static {v2, v0, v3}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 126
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 127
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 129
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 130
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 131
    return-void

    .line 100
    .end local v1           #title:Lcom/sec/android/glview/TwGLText;
    :goto_1
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_LEFT_PADDING:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TOP_PADDING:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_LEFT_PADDING:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TOP_PADDING:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_FONT_SIZE:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    .line 103
    .restart local v1       #title:Lcom/sec/android/glview/TwGLText;
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    return-object v0
.end method

.method private refreshMenuPosition(Z)V
    .locals 11
    .parameter "isInitialize"

    .prologue
    const/high16 v10, 0x4000

    const/4 v9, 0x0

    .line 296
    const/4 v4, 0x6

    .line 298
    .local v4, padding:I
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_Y:I

    int-to-float v5, v6

    .line 301
    .local v5, top:F
    if-eqz p1, :cond_2

    .line 302
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    .line 305
    .local v3, orientation:I
    :goto_0
    const-string v6, "TwGLSettingsMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshMenuPosition orientation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isInitialize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    packed-switch v3, :pswitch_data_0

    .line 314
    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v1

    .line 317
    .local v1, height:F
    :goto_1
    add-float v0, v5, v1

    .line 319
    .local v0, bottom:F
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v6, :cond_1

    .line 320
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v7

    div-float/2addr v7, v10

    add-float/2addr v6, v7

    div-float v7, v1, v10

    add-float/2addr v7, v5

    sub-float v2, v6, v7

    .line 321
    .local v2, move:F
    add-float v6, v5, v2

    cmpg-float v6, v6, v9

    if-gez v6, :cond_3

    .line 322
    neg-float v6, v5

    int-to-float v7, v4

    add-float v2, v6, v7

    .line 326
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6, v9, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->translateAbsolute(FF)V

    .line 328
    .end local v2           #move:F
    :cond_1
    return-void

    .line 304
    .end local v0           #bottom:F
    .end local v1           #height:F
    .end local v3           #orientation:I
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v3

    .restart local v3       #orientation:I
    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v1

    .line 310
    .restart local v1       #height:F
    goto :goto_1

    .line 323
    .restart local v0       #bottom:F
    .restart local v2       #move:F
    :cond_3
    add-float v6, v0, v2

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 324
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    int-to-float v7, v4

    sub-float v2, v6, v7

    goto :goto_2

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 187
    const-string v2, "TwGLSettingsMenu"

    const-string v3, "clear"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    monitor-enter v3

    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 190
    .local v1, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clear()V

    goto :goto_0

    .line 194
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 192
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 193
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    .line 194
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 196
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 268
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mShowAnimation:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->getFirstFullyVisibleViewIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 260
    :cond_1
    return v2
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 243
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 217
    const-string v0, "TwGLSettingsMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->resetFling()V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->resetSettingsText()V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 230
    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 231
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 277
    const-string v0, "TwGLSettingsMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    packed-switch p1, :pswitch_data_0

    .line 287
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 291
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->refreshMenuPosition(Z)V

    .line 292
    return-void

    .line 281
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_PORTRAIT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_PORTRAIT_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    goto :goto_0

    .line 278
    nop

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
    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 274
    return-void
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 200
    const-string v0, "TwGLSettingsMenu"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->resetSettingsText()V

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->requestFocus()Z

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showWaitingAnimation()V

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->refreshMenuPosition(Z)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 212
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 213
    return-void
.end method

.method public resetSettingsText()V
    .locals 2

    .prologue
    .line 234
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mItemList:Ljava/util/HashMap;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->resetSettingsText()V

    .line 238
    :cond_0
    return-void
.end method

.method public setSelectedSettingMenuId(I)V
    .locals 0
    .parameter "commandId"

    .prologue
    .line 331
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    .line 332
    return-void
.end method
