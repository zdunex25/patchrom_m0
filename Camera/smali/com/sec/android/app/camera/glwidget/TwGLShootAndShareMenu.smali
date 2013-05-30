.class public Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLShootAndShareMenu.java"


# static fields
.field private static final SHARESHOT_BUTTON_ICON_POS_X:[I = null

.field private static final SHARESHOT_BUTTON_ICON_POS_Y:[I = null

.field private static final SHARESHOT_COUNT_TEXT_POS_X:[I = null

.field private static final SHARESHOT_COUNT_TEXT_POS_Y:[I = null

#the value of this static final field might be set in the static constructor
.field private static final ShareShot_Button_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ShareShot_Button_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ShareShot_Count_TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ShareShot_Count_TEXT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ShareShot_Count_TEXT_WIDTH:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLShootAndShareMenu"


# instance fields
.field private DefaultCount:Ljava/lang/String;

.field private mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

.field private mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

.field private mUserCount:I

.field newFragment:Landroid/app/DialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    const v0, 0x7f060259

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Button_BUTTON_WIDTH:I

    .line 47
    const v0, 0x7f06025a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Button_BUTTON_HEIGHT:I

    .line 48
    const v0, 0x7f060263

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Count_TEXT_WIDTH:I

    .line 49
    const v0, 0x7f060264

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Count_TEXT_HEIGHT:I

    .line 50
    const v0, 0x7f060265

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Count_TEXT_SIZE:I

    .line 52
    new-array v0, v6, [I

    const v1, 0x7f06025b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f06025c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f06025d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f06025e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_X:[I

    .line 59
    new-array v0, v6, [I

    const v1, 0x7f06025f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f060260

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f060261

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f060262

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_Y:[I

    .line 66
    new-array v0, v6, [I

    const v1, 0x7f060266

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f060267

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f060268

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f060269

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_X:[I

    .line 73
    new-array v0, v6, [I

    const v1, 0x7f06026a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f06026b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f06026c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f06026d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_Y:[I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 82
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 42
    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->DefaultCount:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mUserCount:I

    .line 83
    new-instance v0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-direct {v0}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->newFragment:Landroid/app/DialogFragment;

    .line 85
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Button_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Button_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02021c

    const v7, 0x7f02021d

    const v8, 0x7f02021d

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    .line 91
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Count_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Count_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->DefaultCount:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Count_TEXT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x7f02021e

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setBackground(I)Z

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->setCaptureEnabled(Z)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->setTouchHandled(Z)V

    .line 101
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->init()V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 113
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 123
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 176
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    .line 178
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 179
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 127
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 190
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mUserCount:I

    if-ge v0, v3, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWifiConnectionDialog()V

    .line 195
    :goto_0
    return v3

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->newFragment:Landroid/app/DialogFragment;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 140
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->newFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->newFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->newFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 185
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    .line 186
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->showDisplayCount()V

    .line 133
    return-void
.end method

.method public setUserCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 143
    const-string v0, "TwGLShootAndShareMenu"

    const-string v1, "setUserCount()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-nez p1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 150
    :cond_0
    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mUserCount:I

    .line 151
    return-void

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->showDisplayCount()V

    goto :goto_0
.end method

.method public showDisplayCount()V
    .locals 6

    .prologue
    .line 154
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserCount()I

    move-result v1

    .line 155
    .local v1, mDeviceCount:I
    new-array v2, v1, [Lcom/samsung/shareshot/User;

    .line 156
    .local v2, mDeviceData:[Lcom/samsung/shareshot/User;
    const/4 v3, 0x0

    .line 158
    .local v3, mDisplaycount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 159
    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v4, Lcom/sec/android/app/camera/Camera;

    iget-object v4, v4, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserFromList(I)Lcom/samsung/shareshot/User;

    move-result-object v4

    aput-object v4, v2, v0

    .line 160
    aget-object v4, v2, v0

    if-eqz v4, :cond_0

    .line 161
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    add-int/lit8 v3, v3, 0x1

    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    if-lez v1, :cond_2

    .line 166
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 167
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 170
    :goto_1
    return-void

    .line 169
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_1
.end method
