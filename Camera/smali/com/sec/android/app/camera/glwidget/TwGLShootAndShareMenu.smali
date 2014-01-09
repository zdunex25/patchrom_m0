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


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    const v0, 0x7f060239

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Button_BUTTON_WIDTH:I

    .line 45
    const v0, 0x7f06023a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Button_BUTTON_HEIGHT:I

    .line 46
    const v0, 0x7f060243

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Count_TEXT_WIDTH:I

    .line 47
    const v0, 0x7f060244

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Count_TEXT_HEIGHT:I

    .line 48
    const v0, 0x7f060245

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->ShareShot_Count_TEXT_SIZE:I

    .line 50
    new-array v0, v6, [I

    const v1, 0x7f06023b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f06023c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f06023d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f06023e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_X:[I

    .line 57
    new-array v0, v6, [I

    const v1, 0x7f06023f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f060240

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f060241

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f060242

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_Y:[I

    .line 64
    new-array v0, v6, [I

    const v1, 0x7f060246

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f060247

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f060248

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f060249

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_X:[I

    .line 71
    new-array v0, v6, [I

    const v1, 0x7f06024a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f06024b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f06024c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f06024d

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
    .line 89
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 41
    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->DefaultCount:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mUserCount:I

    .line 91
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

    const v6, 0x7f020209

    const v7, 0x7f02020a

    const v8, 0x7f02020a

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    .line 97
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

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x7f02020b

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setBackground(I)Z

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->setCaptureEnabled(Z)V

    .line 106
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->init()V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 118
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_BUTTON_ICON_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->SHARESHOT_COUNT_TEXT_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 128
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 134
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    .line 136
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 137
    return-void
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 168
    :cond_1
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 141
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 179
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mUserCount:I

    if-ge v1, v3, :cond_0

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showWifiConnectionDialog()V

    .line 185
    :goto_0
    return v3

    .line 182
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;

    invoke-direct {v0}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;-><init>()V

    .line 183
    .local v0, newFragment:Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->hideCaptureLayout()V

    .line 149
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->showCaptureLayout()V

    .line 145
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 152
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->setTouchHandled(Z)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showSideMenuItems()V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideStatusIcon()V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->showCaptureLayout()V

    .line 161
    return-void
.end method

.method public setUserCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 79
    const-string v0, "TwGLShootAndShareMenu"

    const-string v1, "setUserCount()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-nez p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->DefaultCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 84
    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mUserCount:I

    .line 85
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->mSharingDeviceText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 175
    :cond_1
    return-void
.end method
