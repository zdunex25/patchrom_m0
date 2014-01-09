.class public Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSpeedControlMenu.java"


# static fields
.field private static final FAST_SPEED_CONTROL:I = 0x1

.field private static final SLOW_SPEED_CONTROL:I = 0x0

.field public static final SPEEDCONTROL_ICON_POX_X:[I = null

.field public static final SPEEDCONTROL_ICON_POX_Y:[I = null

.field public static final SPEEDCONTROL_TEXT_POX_X:[I = null

.field public static final SPEEDCONTROL_TEXT_POX_Y:[I = null

#the value of this static final field might be set in the static constructor
.field private static final SPEED_CONTROL_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SPEED_CONTROL_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final Speed_Control_Icon_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final Speed_Control_Icon_TEXT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final Speed_Control_Icon_WIDTH:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLSpeedControlMenu"


# instance fields
.field private mSpeed:I

.field private mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    const v0, 0x7f0601b7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->Speed_Control_Icon_WIDTH:I

    .line 43
    const v0, 0x7f0601b8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->Speed_Control_Icon_HEIGHT:I

    .line 44
    const v0, 0x7f0601b6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->Speed_Control_Icon_TEXT:I

    .line 45
    new-array v0, v6, [I

    const v1, 0x7f0601b9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0601ba

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0601bb

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0601bc

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->SPEEDCONTROL_ICON_POX_X:[I

    .line 47
    new-array v0, v6, [I

    const v1, 0x7f0601bd

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0601be

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0601bf

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0601c0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->SPEEDCONTROL_ICON_POX_Y:[I

    .line 49
    new-array v0, v6, [I

    const v1, 0x7f0601c1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0601c2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0601c3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0601c4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->SPEEDCONTROL_TEXT_POX_X:[I

    .line 51
    new-array v0, v6, [I

    const v1, 0x7f0601c5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0601c6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0601c7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0601c8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->SPEEDCONTROL_TEXT_POX_Y:[I

    .line 55
    const v0, 0x7f0601b7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x14

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->SPEED_CONTROL_BUTTON_WIDTH:I

    .line 56
    const v0, 0x7f0601b8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->SPEED_CONTROL_BUTTON_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 68
    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeed:I

    .line 70
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->SPEEDCONTROL_ICON_POX_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->SPEEDCONTROL_ICON_POX_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    const v4, 0x7f02002b

    const v5, 0x7f02002c

    const v6, 0x7f02002c

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->SPEED_CONTROL_BUTTON_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->SPEED_CONTROL_BUTTON_HEIGHT:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeed:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getSpeedResourceString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->Speed_Control_Icon_TEXT:I

    int-to-float v2, v2

    const/16 v3, 0x88

    const/16 v4, 0xa0

    const/16 v5, 0xb9

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 84
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->setCaptureEnabled(Z)V

    .line 86
    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V

    .line 88
    return-void
.end method

.method private init(Lcom/sec/android/glview/TwGLViewGroup;I)V
    .locals 6
    .parameter "parent"
    .parameter "viewId"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->SPEEDCONTROL_ICON_POX_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->SPEEDCONTROL_ICON_POX_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->SPEEDCONTROL_ICON_POX_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->SPEEDCONTROL_ICON_POX_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->SPEEDCONTROL_ICON_POX_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->SPEEDCONTROL_ICON_POX_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setLeftTop(IFF)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 104
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    .line 106
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 107
    return-void
.end method

.method public getSpeedControl()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeed:I

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 132
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 4
    .parameter "view"

    .prologue
    .line 149
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v2, :cond_1

    .line 150
    const-string v2, "TwGLSpeedControlMenu"

    const-string v3, "mSpeedControlButton on clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, dialogType:I
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 156
    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->newInstance(I)Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;

    move-result-object v1

    .line 157
    .local v1, newFragment:Landroid/app/DialogFragment;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 160
    const/4 v2, 0x1

    .line 163
    .end local v0           #dialogType:I
    .end local v1           #newFragment:Landroid/app/DialogFragment;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->onHideSpeedControlButton()V

    .line 116
    return-void
.end method

.method public onHideSpeedControlButton()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "TwGLSpeedControlMenu"

    const-string v1, "onHideSpeedControlButton"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 128
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->onShowSpeedControlButton()V

    .line 112
    return-void
.end method

.method public onShowSpeedControlButton()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "TwGLSpeedControlMenu"

    const-string v1, "onShowSpeedControlButton"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 122
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 136
    const-string v0, "TwGLSpeedControlMenu"

    const-string v1, "SpeedControl Menu restart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->setTouchHandled(Z)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeed:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getSpeedResourceString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x4218

    const/16 v3, 0x88

    const/16 v4, 0xa0

    const/16 v5, 0xb9

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeedControlButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 144
    :cond_0
    return-void
.end method

.method public setSpeedControl(I)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 171
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSpeedControlMenu;->mSpeed:I

    .line 172
    return-void
.end method
