.class public Lcom/android/camera/glwidget/TwGLCameraSideMenu;
.super Lcom/android/camera/MenuBase;
.source "TwGLCameraSideMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/android/camera/glwidget/TwGLDragDropBox$OnDropListener;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;


# static fields
#the value of this static final field might be set in the static constructor
.field public static final ANCHOR_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ITEM_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ITEM_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LEFT_ITEM_INTERVAL:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LEFT_ITEM_START_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LEFT_ITEM_START_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MODE_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MODE_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final NUM_OF_LEFT_SIDE_MENU:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final RIGHT_SIDE_MENU_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_IMAGE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_IMAGE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final SIDE_MENU_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final SIDE_MENU_WIDTH:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLCameraSideMenu"

.field private static final THUMBNAIL_BUTTON_POS_X:I

.field private static final THUMBNAIL_BUTTON_POS_Y:I


# instance fields
.field private mAnchorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mChkSideMenuItemsShow:Z

.field private mDelCommand:[I

.field private mDropBoxList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;",
            ">;"
        }
    .end annotation
.end field

.field private mEditableBackground:Lcom/sec/android/glview/TwGLImage;

.field private mLeftBackground:Lcom/sec/android/glview/TwGLImage;

.field private mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mModeButton:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

.field private mResource:Lcom/android/camera/resourcedata/EditableResourceDataBase;

.field private mRightBackground:Lcom/sec/android/glview/TwGLImage;

.field private mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSelectedMenuId:I

.field private mSettingButton:Lcom/android/camera/glwidget/TwGLItem;

.field private mSettingCommand:Lcom/android/camera/command/MenuCommand;

.field private mShutterButton:Lcom/sec/android/glview/TwGLButton;

.field private mShutterButtonImage:Lcom/sec/android/glview/TwGLImage;

.field private mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const v0, 0x7f0700b8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    .line 60
    const v0, 0x7f0700b9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_HEIGHT:I

    .line 61
    const v0, 0x7f080014

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    .line 62
    const v0, 0x7f0700ba

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ITEM_WIDTH:I

    .line 63
    const v0, 0x7f0700bb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    .line 64
    sget v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    sget v1, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ITEM_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_X:I

    .line 65
    const v0, 0x7f0700be

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_Y:I

    .line 66
    sget v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_HEIGHT:I

    sget v1, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_Y:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    sget v2, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    div-int/2addr v0, v1

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_INTERVAL:I

    .line 67
    const v0, 0x7f07009a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->RIGHT_SIDE_MENU_POS_X:I

    .line 68
    const v0, 0x7f0700c0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SHUTTER_BUTTON_POS_X:I

    .line 69
    const v0, 0x7f0700c1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SHUTTER_BUTTON_POS_Y:I

    .line 70
    const v0, 0x7f0700c2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SHUTTER_BUTTON_IMAGE_POS_X:I

    .line 71
    const v0, 0x7f0700c3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SHUTTER_BUTTON_IMAGE_POS_Y:I

    .line 72
    const v0, 0x7f0700c6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f070140

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->MODE_BUTTON_POS_X:I

    .line 73
    const v0, 0x7f0700c7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->MODE_BUTTON_POS_Y:I

    .line 74
    sget v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    const v1, 0x7f070258

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->THUMBNAIL_BUTTON_POS_X:I

    .line 75
    const v0, 0x7f0700c8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->THUMBNAIL_BUTTON_POS_Y:I

    .line 78
    const v0, 0x7f0700c9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ANCHOR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;)V
    .locals 7
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    const/4 v5, 0x1

    .line 107
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/MenuBase;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;IZ)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSelectedMenuId:I

    .line 110
    iput-boolean v5, p0, Lcom/android/camera/MenuBase;->mVisibility:Z

    .line 112
    invoke-virtual {p0, v5}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->setTouchHandled(Z)V

    .line 114
    invoke-direct {p0, p3, p2}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/glwidget/TwGLCameraSideMenu;)Lcom/android/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/glwidget/TwGLCameraSideMenu;)Lcom/android/camera/glwidget/TwGLModeSwitchButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/glwidget/TwGLCameraSideMenu;)Lcom/android/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    return-object v0
.end method

.method private findLastSelectedView()Lcom/sec/android/glview/TwGLView;
    .locals 5

    .prologue
    .line 648
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getSize()I

    move-result v1

    .line 650
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 651
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    .line 652
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    instance-of v3, v2, Lcom/android/camera/glwidget/TwGLDragDropBox;

    if-eqz v3, :cond_1

    .line 653
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/camera/glwidget/TwGLDragDropBox;

    invoke-virtual {v3}, Lcom/android/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    check-cast v3, Lcom/android/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    iget v4, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSelectedMenuId:I

    if-ne v3, v4, :cond_1

    .line 663
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_0
    :goto_1
    return-object v2

    .line 657
    .restart local v2       #view:Lcom/sec/android/glview/TwGLView;
    :cond_1
    instance-of v3, v2, Lcom/android/camera/glwidget/TwGLItem;

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 658
    check-cast v3, Lcom/android/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    iget v4, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSelectedMenuId:I

    if-eq v3, v4, :cond_0

    .line 650
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    goto :goto_1
.end method

.method private init(Lcom/sec/android/glview/TwGLViewGroup;I)V
    .locals 19
    .parameter "parent"
    .parameter "viewId"

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-nez v3, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v3

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lcom/android/camera/MenuResourceDepot;->getResource(I)Lcom/android/camera/resourcedata/MenuResourceBase;

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Lcom/android/camera/MenuResourceDepot;->getResource(I)Lcom/android/camera/resourcedata/MenuResourceBase;

    move-result-object v3

    check-cast v3, Lcom/android/camera/resourcedata/EditableResourceDataBase;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/android/camera/resourcedata/EditableResourceDataBase;

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/android/camera/resourcedata/EditableResourceDataBase;

    if-eqz v3, :cond_0

    .line 127
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v5, v5

    sget v8, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_HEIGHT:I

    int-to-float v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 129
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->RIGHT_SIDE_MENU_POS_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    sget v5, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v5, v5

    sget v8, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_HEIGHT:I

    int-to-float v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 131
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const v9, 0x7f0201b5

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    .line 132
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const v9, 0x7f0201b4

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    .line 133
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const v9, 0x7f0201b3

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 136
    new-instance v3, Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    sget v5, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->MODE_BUTTON_POS_X:I

    int-to-float v5, v5

    sget v8, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->MODE_BUTTON_POS_Y:I

    int-to-float v8, v8

    const/4 v9, 0x1

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;-><init>(Lcom/android/camera/AbstractCameraActivity;FFZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->setTag(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    new-instance v4, Lcom/android/camera/glwidget/TwGLCameraSideMenu$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu$1;-><init>(Lcom/android/camera/glwidget/TwGLCameraSideMenu;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->setOnModeChangedListener(Lcom/android/camera/glwidget/TwGLModeSwitchButton$OnModeChangedListener;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->setHoverPopupOffset(II)V

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    const/16 v4, 0x5351

    invoke-virtual {v3, v4}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->setHoverPopupGravity(I)V

    .line 152
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SHUTTER_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SHUTTER_BUTTON_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f020180

    const v6, 0x7f020181

    const v7, 0x7f020180

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090140

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupOffset(II)V

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v4, 0x5351

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupGravity(I)V

    .line 166
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SHUTTER_BUTTON_IMAGE_POS_X:I

    int-to-float v5, v5

    sget v8, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SHUTTER_BUTTON_IMAGE_POS_Y:I

    int-to-float v8, v8

    const v9, 0x7f02017e

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLImage;

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setTag(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 174
    new-instance v1, Lcom/android/camera/glwidget/TwGLThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    sget v3, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v4, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/glwidget/TwGLThumbnailButton;-><init>(Lcom/android/camera/AbstractCameraActivity;FFZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    .line 178
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/camera/glwidget/TwGLThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    const/16 v4, 0x1d

    invoke-virtual {v3, v4}, Lcom/android/camera/glwidget/TwGLThumbnailButton;->setTag(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/glwidget/TwGLThumbnailButton;->setHoverPopupOffset(II)V

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    const/16 v4, 0x5351

    invoke-virtual {v3, v4}, Lcom/android/camera/glwidget/TwGLThumbnailButton;->setHoverPopupGravity(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 197
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    sget v3, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    move/from16 v0, v18

    if-ge v0, v3, :cond_5

    .line 198
    new-instance v1, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    sget v3, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_Y:I

    sget v5, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    sget v8, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_INTERVAL:I

    add-int/2addr v5, v8

    mul-int v5, v5, v18

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v5, v5

    sget v8, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    int-to-float v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;-><init>(Lcom/android/camera/AbstractCameraActivity;FFFF)V

    .line 200
    .local v1, b:Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/android/camera/resourcedata/EditableResourceDataBase;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/android/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 201
    .local v6, bundle:Lcom/android/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v6}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/MenuBase;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v3, v4, v5, v8, v9}, Lcom/android/camera/command/CommandBuilder;->buildCommand(ILcom/android/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;I)Lcom/android/camera/command/MenuCommand;

    move-result-object v7

    .line 202
    .local v7, command:Lcom/android/camera/command/MenuCommand;
    new-instance v2, Lcom/android/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    sget v4, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    int-to-float v5, v5

    const/4 v8, 0x2

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/glwidget/TwGLItem;-><init>(Lcom/android/camera/AbstractCameraActivity;FFLcom/android/camera/resourcedata/MenuResourceBundle;Lcom/android/camera/command/MenuCommand;I)V

    .line 203
    .local v2, item:Lcom/android/camera/glwidget/TwGLItem;
    invoke-virtual {v2}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_2

    .line 204
    invoke-virtual {v2}, Lcom/android/camera/glwidget/TwGLItem;->setToggleButton()V

    .line 206
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/glwidget/TwGLItem;->setHoverPopupOffset(II)V

    .line 207
    const/16 v3, 0x5351

    invoke-virtual {v2, v3}, Lcom/android/camera/glwidget/TwGLItem;->setHoverPopupGravity(I)V

    .line 208
    invoke-virtual {v1, v2}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v2           #item:Lcom/android/camera/glwidget/TwGLItem;
    .end local v6           #bundle:Lcom/android/camera/resourcedata/MenuResourceBundle;
    .end local v7           #command:Lcom/android/camera/command/MenuCommand;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget v4, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    if-gt v3, v4, :cond_3

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 216
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->setOnDropListener(Lcom/android/camera/glwidget/TwGLDragDropBox$OnDropListener;)V

    .line 197
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 176
    .end local v1           #b:Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;
    .end local v18           #i:I
    :cond_4
    new-instance v1, Lcom/android/camera/glwidget/TwGLThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    sget v3, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v4, v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/glwidget/TwGLThumbnailButton;-><init>(Lcom/android/camera/AbstractCameraActivity;FFZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    goto/16 :goto_1

    .line 220
    .restart local v18       #i:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/android/camera/resourcedata/EditableResourceDataBase;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/android/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 221
    .restart local v6       #bundle:Lcom/android/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v6}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/MenuBase;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v3, v4, v5, v8, v9}, Lcom/android/camera/command/CommandBuilder;->buildCommand(ILcom/android/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;I)Lcom/android/camera/command/MenuCommand;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSettingCommand:Lcom/android/camera/command/MenuCommand;

    .line 222
    new-instance v8, Lcom/android/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    sget v3, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_X:I

    int-to-float v10, v3

    sget v3, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_Y:I

    sget v4, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    sget v5, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_INTERVAL:I

    add-int/2addr v4, v5

    mul-int v4, v4, v18

    add-int/2addr v3, v4

    int-to-float v11, v3

    sget v3, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v12, v3

    sget v3, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    int-to-float v13, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSettingCommand:Lcom/android/camera/command/MenuCommand;

    const/16 v16, 0x2

    move-object v14, v6

    invoke-direct/range {v8 .. v16}, Lcom/android/camera/glwidget/TwGLItem;-><init>(Lcom/android/camera/AbstractCameraActivity;FFFFLcom/android/camera/resourcedata/MenuResourceBundle;Lcom/android/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/android/camera/glwidget/TwGLItem;

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/android/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/camera/glwidget/TwGLItem;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/android/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/camera/glwidget/TwGLItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/android/camera/glwidget/TwGLItem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/glwidget/TwGLItem;->setHoverPopupOffset(II)V

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/android/camera/glwidget/TwGLItem;

    const/16 v4, 0x5351

    invoke-virtual {v3, v4}, Lcom/android/camera/glwidget/TwGLItem;->setHoverPopupGravity(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/android/camera/glwidget/TwGLItem;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 229
    new-instance v3, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct {v3, v4, v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 235
    const/16 v18, 0x0

    :goto_4
    sget v3, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v18

    if-ge v0, v3, :cond_6

    .line 236
    new-instance v17, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->SIDE_MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_START_POS_Y:I

    sget v8, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    sget v9, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->LEFT_ITEM_INTERVAL:I

    add-int/2addr v8, v9

    mul-int v8, v8, v18

    add-int/2addr v5, v8

    sget v8, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    sget v9, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ANCHOR_HEIGHT:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    int-to-float v5, v5

    const v8, 0x7f0201b6

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v5, v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    .line 240
    .local v17, anchor:Lcom/sec/android/glview/TwGLImage;
    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 235
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 244
    .end local v17           #anchor:Lcom/sec/android/glview/TwGLImage;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/android/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    sget v5, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4, v3}, Lcom/android/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/CameraResolution;->isWideResolution(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->hideBackground()V

    .line 256
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v3, :cond_7

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/MenuDimController;->synchronizeDim()V

    .line 265
    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->setChkSideMenuItemsShow(Z)V

    goto/16 :goto_0

    .line 252
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->showBackground()V

    goto :goto_5

    .line 210
    .end local v6           #bundle:Lcom/android/camera/resourcedata/MenuResourceBundle;
    .restart local v1       #b:Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;
    :catch_0
    move-exception v3

    goto/16 :goto_3
.end method


# virtual methods
.method public getChkSideMenuItemsShow()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mChkSideMenuItemsShow:Z

    return v0
.end method

.method public hideBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 493
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 495
    return-void
.end method

.method public hideSideMenu()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 477
    return-void
.end method

.method public hideSideMenuItems()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 464
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->setVisibility(I)V

    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->setChkSideMenuItemsShow(Z)V

    .line 469
    return-void
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public moveModeButton()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->setCameraSelected()V

    .line 603
    :cond_0
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->finish()V

    .line 516
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 8
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 387
    iget-object v3, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-nez v3, :cond_0

    .line 388
    const-string v3, "TwGLCameraSideMenu"

    const-string v5, "mActivityContext is null"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 443
    :goto_0
    return v3

    .line 392
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x20

    if-eq v3, v6, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x1d

    if-eq v3, v6, :cond_1

    .line 393
    iget-object v3, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/MenuDimController;->synchronizeDim()V

    .line 396
    :cond_1
    iget-object v3, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v3, Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 397
    const-string v3, "TwGLCameraSideMenu"

    const-string v5, "return isCapturing.."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 398
    goto :goto_0

    .line 401
    :cond_2
    iget-object v3, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v3, Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 402
    const-string v3, "TwGLCameraSideMenu"

    const-string v5, "return isStartPreview.."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 403
    goto :goto_0

    .line 406
    :cond_3
    iget-object v3, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v3, Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getIsLaunchGallery()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 407
    const-string v3, "TwGLCameraSideMenu"

    const-string v5, "return getIsLaunchGallery.."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 408
    goto :goto_0

    .line 411
    :cond_4
    const-string v3, "TwGLCameraSideMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v3, v4

    .line 443
    goto/16 :goto_0

    .line 415
    :sswitch_0
    iget-object v3, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->onModechanged()V

    move v3, v5

    .line 416
    goto/16 :goto_0

    .line 419
    :sswitch_1
    iget-object v3, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 420
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v3, "com.android.gallery3d"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 422
    .local v0, ApplicationState:I
    const-string v3, "TwGLCameraSideMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    .line 424
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 425
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.app.popupuireceiver"

    const-string v6, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v3, "app_package_name"

    const-string v6, "com.android.gallery3d"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object v3, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3, v1, v4}, Lcom/android/camera/AbstractCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    :goto_1
    move v3, v5

    .line 435
    goto/16 :goto_0

    .line 429
    :cond_6
    iget-object v3, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v3, Lcom/android/camera/Camera;

    const-string v4, "quickview"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/android/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 430
    iget-object v3, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 431
    iget-object v3, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->processBack()V

    goto :goto_1

    .line 437
    .end local v0           #ApplicationState:I
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :sswitch_2
    iget-object v3, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v3, :cond_7

    .line 438
    const-string v3, "TwGLCameraSideMenu"

    const-string v5, "hideWaitingAnimation in onclick "

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v3, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    :cond_7
    move v3, v4

    .line 441
    goto/16 :goto_0

    .line 413
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1d -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 5
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 536
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    float-to-int v3, p2

    float-to-int v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mRightSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    float-to-int v3, p2

    float-to-int v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    :cond_0
    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/glwidget/TwGLEditableShortcutMenu;

    .line 539
    .local v1, menu:Lcom/android/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v1, :cond_1

    .line 540
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/glwidget/TwGLEditableShortcutMenu;->resetOrder(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v1           #menu:Lcom/android/camera/glwidget/TwGLEditableShortcutMenu;
    :cond_1
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 4
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 551
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->resetOrder()V

    .line 552
    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/glwidget/TwGLEditableShortcutMenu;

    .line 553
    .local v1, menu:Lcom/android/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v1, :cond_0

    .line 554
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/glwidget/TwGLEditableShortcutMenu;->resetOrder(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .end local v1           #menu:Lcom/android/camera/glwidget/TwGLEditableShortcutMenu;
    :cond_0
    :goto_0
    return-void

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 8
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v7, 0x28

    .line 520
    const/4 v3, 0x0

    .line 522
    .local v3, menu:Lcom/android/camera/glwidget/TwGLEditableShortcutMenu;
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x28

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/camera/glwidget/TwGLEditableShortcutMenu;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    if-eqz v3, :cond_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/camera/glwidget/TwGLEditableShortcutMenu;->isActive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 527
    :cond_0
    iget-object v4, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v5, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/AbstractCameraActivity;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/MenuBase;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    invoke-static {v7, v4, v5, v6}, Lcom/android/camera/command/CommandBuilder;->buildCommand(ILcom/android/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;)Lcom/android/camera/command/MenuCommand;

    move-result-object v1

    .line 528
    .local v1, cmd:Lcom/android/camera/command/MenuCommand;
    if-eqz v1, :cond_1

    .line 529
    invoke-virtual {v1}, Lcom/android/camera/command/MenuCommand;->execute()V

    .line 531
    .end local v1           #cmd:Lcom/android/camera/command/MenuCommand;
    :cond_1
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v2

    .line 524
    .local v2, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public onDrop(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->resetOrder()V

    .line 563
    return-void
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "event"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_2

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 670
    const/4 v0, 0x1

    .line 672
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 678
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 593
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;

    .line 594
    .local v0, b:Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->setPressedBGVisibility(I)V

    goto :goto_0

    .line 596
    .end local v0           #b:Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v2}, Lcom/android/camera/glwidget/TwGLThumbnailButton;->removeUptateMessage()V

    .line 597
    return-void
.end method

.method protected onShow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 499
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/android/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v1, v3}, Lcom/android/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/android/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_1

    .line 500
    iget-object v1, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/AbstractCameraActivity;->setCameraSelfIconLoaded(Z)V

    .line 504
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->findLastSelectedView()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    .line 505
    .local v0, lastSelectedView:Lcom/sec/android/glview/TwGLView;
    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/MenuDimController;->synchronizeDim()V

    .line 511
    return-void

    .line 502
    .end local v0           #lastSelectedView:Lcom/sec/android/glview/TwGLView;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/android/camera/AbstractCameraActivity;->setCameraSelfIconLoaded(Z)V

    goto :goto_0
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x1b

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 343
    instance-of v2, p1, Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v2, :cond_0

    .line 383
    :goto_0
    return v0

    .line 347
    :cond_0
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 348
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 383
    goto :goto_0

    .line 350
    :pswitch_1
    const-string v2, "TwGLCameraSideMenu"

    const-string v3, "onTouch MotionEvent.ACTION_DOWN"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 352
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    goto :goto_1

    .line 355
    :pswitch_2
    const-string v0, "TwGLCameraSideMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch MotionEvent.ACTION_UP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 357
    :goto_2
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->processBack()V

    goto :goto_2

    :cond_1
    move v0, v1

    .line 360
    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 365
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_5

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getBurstMode()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 368
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isBurstCapturing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 369
    const-string v0, "TwGLCameraSideMenu"

    const-string v2, "return isCapturing.."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 370
    goto/16 :goto_0

    .line 373
    :cond_4
    const-string v0, "TwGLCameraSideMenu"

    const-string v2, "return isCapturing.."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 374
    goto/16 :goto_0

    .line 378
    :cond_5
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->shutterButtonCancelAction()V

    goto/16 :goto_1

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public refresh()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 302
    iget-object v1, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-nez v1, :cond_1

    .line 320
    :cond_0
    return-void

    .line 308
    :cond_1
    const/4 v8, 0x0

    .line 309
    .local v8, i:I
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;

    .line 310
    .local v7, b:Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;
    invoke-virtual {v7}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->removeView()Lcom/sec/android/glview/TwGLView;

    move-result-object v11

    check-cast v11, Lcom/android/camera/glwidget/TwGLItem;

    .line 311
    .local v11, v:Lcom/android/camera/glwidget/TwGLItem;
    iget-object v1, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/camera/MenuDimController;->removeButton(Lcom/android/camera/glwidget/TwGLItem;)V

    .line 312
    invoke-virtual {v11}, Lcom/android/camera/glwidget/TwGLItem;->clear()V

    .line 313
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/android/camera/resourcedata/EditableResourceDataBase;

    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    invoke-virtual {v1, v8}, Lcom/android/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/android/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    .line 314
    .local v4, bundle:Lcom/android/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera/MenuBase;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v1, v2, v3, v6, v12}, Lcom/android/camera/command/CommandBuilder;->buildCommand(ILcom/android/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;I)Lcom/android/camera/command/MenuCommand;

    move-result-object v5

    .line 315
    .local v5, command:Lcom/android/camera/command/MenuCommand;
    new-instance v0, Lcom/android/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    sget v2, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ITEM_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    int-to-float v3, v3

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/glwidget/TwGLItem;-><init>(Lcom/android/camera/AbstractCameraActivity;FFLcom/android/camera/resourcedata/MenuResourceBundle;Lcom/android/camera/command/MenuCommand;I)V

    .line 316
    .local v0, item:Lcom/android/camera/glwidget/TwGLItem;
    invoke-virtual {v0, v13, v13}, Lcom/android/camera/glwidget/TwGLItem;->setHoverPopupOffset(II)V

    .line 317
    const/16 v1, 0x5351

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItem;->setHoverPopupGravity(I)V

    .line 318
    invoke-virtual {v7, v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move v8, v9

    .line 319
    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_0
.end method

.method public refreshAnchors()V
    .locals 3

    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 275
    :cond_0
    return-void

    .line 271
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;

    invoke-virtual {v2}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/android/camera/glwidget/TwGLItem;

    .line 273
    .local v1, item:Lcom/android/camera/glwidget/TwGLItem;
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/android/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public refreshEditableMenu()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 282
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/android/camera/resourcedata/EditableResourceDataBase;

    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getCameraSideMenuOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    .line 284
    const/4 v8, 0x0

    .line 285
    .local v8, i:I
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;

    .line 286
    .local v7, b:Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;
    invoke-virtual {v7}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->removeView()Lcom/sec/android/glview/TwGLView;

    move-result-object v11

    check-cast v11, Lcom/android/camera/glwidget/TwGLItem;

    .line 287
    .local v11, v:Lcom/android/camera/glwidget/TwGLItem;
    invoke-virtual {v11}, Lcom/android/camera/glwidget/TwGLItem;->clear()V

    .line 288
    iget-object v1, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/camera/MenuDimController;->removeButton(Lcom/android/camera/glwidget/TwGLItem;)V

    .line 289
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/android/camera/resourcedata/EditableResourceDataBase;

    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    invoke-virtual {v1, v8}, Lcom/android/camera/resourcedata/EditableResourceDataBase;->getItem(I)Lcom/android/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    .line 290
    .local v4, bundle:Lcom/android/camera/resourcedata/MenuResourceBundle;
    invoke-virtual {v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera/MenuBase;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->getZorder()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v1, v2, v3, v6, v12}, Lcom/android/camera/command/CommandBuilder;->buildCommand(ILcom/android/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;I)Lcom/android/camera/command/MenuCommand;

    move-result-object v5

    .line 291
    .local v5, command:Lcom/android/camera/command/MenuCommand;
    new-instance v0, Lcom/android/camera/glwidget/TwGLItem;

    iget-object v1, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    sget v2, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ITEM_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->ITEM_HEIGHT:I

    int-to-float v3, v3

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/glwidget/TwGLItem;-><init>(Lcom/android/camera/AbstractCameraActivity;FFLcom/android/camera/resourcedata/MenuResourceBundle;Lcom/android/camera/command/MenuCommand;I)V

    .line 292
    .local v0, item:Lcom/android/camera/glwidget/TwGLItem;
    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLItem;->setToggleButton()V

    .line 295
    :cond_0
    invoke-virtual {v0, v13, v13}, Lcom/android/camera/glwidget/TwGLItem;->setHoverPopupOffset(II)V

    .line 296
    const/16 v1, 0x5351

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItem;->setHoverPopupGravity(I)V

    .line 297
    invoke-virtual {v7, v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move v8, v9

    .line 298
    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_0

    .line 299
    .end local v0           #item:Lcom/android/camera/glwidget/TwGLItem;
    .end local v4           #bundle:Lcom/android/camera/resourcedata/MenuResourceBundle;
    .end local v5           #command:Lcom/android/camera/command/MenuCommand;
    .end local v7           #b:Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;
    .end local v11           #v:Lcom/android/camera/glwidget/TwGLItem;
    :cond_1
    return-void
.end method

.method public resetOrder()V
    .locals 9

    .prologue
    const/16 v8, 0x63

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .local v1, builder:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v5, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->NUM_OF_LEFT_SIDE_MENU:I

    if-ge v4, v5, :cond_3

    .line 569
    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;

    .line 570
    .local v0, b:Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;
    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    check-cast v3, Lcom/android/camera/glwidget/TwGLItem;

    .line 571
    .local v3, v:Lcom/android/camera/glwidget/TwGLItem;
    invoke-virtual {v3}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aget v5, v5, v6

    if-ne v4, v5, :cond_1

    .line 572
    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aput v8, v4, v6

    .line 574
    :cond_1
    invoke-virtual {v3}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aget v5, v5, v7

    if-ne v4, v5, :cond_0

    .line 575
    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aput v8, v4, v7

    goto :goto_0

    .line 578
    .end local v0           #b:Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;
    .end local v3           #v:Lcom/android/camera/glwidget/TwGLItem;
    :cond_2
    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aget v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDelCommand:[I

    aget v4, v4, v7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;

    .line 584
    .restart local v0       #b:Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;
    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    check-cast v3, Lcom/android/camera/glwidget/TwGLItem;

    .line 585
    .restart local v3       #v:Lcom/android/camera/glwidget/TwGLItem;
    invoke-virtual {v3}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 588
    .end local v0           #b:Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;
    .end local v3           #v:Lcom/android/camera/glwidget/TwGLItem;
    :cond_4
    const/16 v4, 0x1b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mResource:Lcom/android/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public setChkSideMenuItemsShow(Z)V
    .locals 0
    .parameter "setChk"

    .prologue
    .line 448
    iput-boolean p1, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mChkSideMenuItemsShow:Z

    .line 449
    return-void
.end method

.method public setModeButtonDimmed(Z)V
    .locals 1
    .parameter "dimmed"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->setModeButtonDimmed(Z)V

    .line 613
    return-void
.end method

.method public setSelectedMenuId(I)V
    .locals 3
    .parameter "commandId"

    .prologue
    .line 643
    const-string v0, "TwGLCameraSideMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectedMenuId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iput p1, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSelectedMenuId:I

    .line 645
    return-void
.end method

.method public showBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 487
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mLeftBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mRightBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 490
    return-void
.end method

.method public showEditBackground(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 616
    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-nez v2, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mDropBoxList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;

    .line 620
    .local v0, b:Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;
    if-eqz v0, :cond_2

    .line 621
    if-eqz p1, :cond_3

    .line 622
    invoke-virtual {v0, v3}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->setNormalBGVisibility(I)V

    goto :goto_1

    .line 624
    :cond_3
    invoke-virtual {v0, v4}, Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;->setNormalBGVisibility(I)V

    goto :goto_1

    .line 627
    .end local v0           #b:Lcom/android/camera/glwidget/TwGLSideMenuDragDropBox;
    :cond_4
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/android/camera/glwidget/TwGLItem;

    if-eqz v2, :cond_5

    .line 628
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSettingButton:Lcom/android/camera/glwidget/TwGLItem;

    invoke-virtual {v2, p1}, Lcom/android/camera/glwidget/TwGLItem;->setDim(Z)V

    .line 630
    :cond_5
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    if-eqz p1, :cond_6

    .line 632
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 634
    :cond_6
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mEditableBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSideMenu()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mSideMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 473
    return-void
.end method

.method public showSideMenuItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 456
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mLeftSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLThumbnailButton;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mModeButton:Lcom/android/camera/glwidget/TwGLModeSwitchButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLModeSwitchButton;->setVisibility(I)V

    .line 460
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->setChkSideMenuItemsShow(Z)V

    .line 461
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-nez v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->isActivityDestoying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    iget-object v0, p0, Lcom/android/camera/MenuBase;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/glwidget/TwGLThumbnailButton;->update(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
    .locals 1
    .parameter "data"
    .parameter "orientation"
    .parameter "bAnimation"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;IZ)V

    .line 340
    :cond_0
    return-void
.end method

.method public updateThumbnailButton(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLCameraSideMenu;->mThumbnailButton:Lcom/android/camera/glwidget/TwGLThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/glwidget/TwGLThumbnailButton;->update(Ljava/lang/String;Z)V

    .line 609
    :cond_0
    return-void
.end method
