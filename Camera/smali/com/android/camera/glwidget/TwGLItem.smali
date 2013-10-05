.class public Lcom/android/camera/glwidget/TwGLItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItem.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;
.implements Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CHECKBOX_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CHECKBOX_X_OFFSET_FROM_RIGHT:I = 0x0

.field public static final EDITABLESHORTCUT_TYPE:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_FONT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_TEXT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_SELECTOR_HIGHLIGHT_COLOR:I = 0x0

.field public static final LIST_TYPE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_BUTTON_IMAGE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_BUTTON_IMAGE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_TEXT_FONT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_TEXT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_TEXT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_TEXT_WIDTH:I = 0x0

.field public static final OPTION_TYPE:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_DATA_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_DATA_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_DATA_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_DATA_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_TEXT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_TEXT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final OPTION_TYPE_TEXT_WIDTH:I = 0x0

.field private static final ROTATE_ANIMATION_DURATION:I = 0x12c

#the value of this static final field might be set in the static constructor
.field private static final SEPARATOR_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SEPARATOR_POS_X:I = 0x0

.field public static final SETTINGS_TYPE:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_DATA_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_DATA_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_DATA_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_DATA_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_TEXT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_TEXT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SETTING_TYPE_TEXT_WIDTH:I = 0x0

.field public static final SIDEBUTTON_TYPE:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final SIDEBUTTON_TYPE_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SIDEBUTTON_TYPE_BUTTON_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwGLItem"

#the value of this static final field might be set in the static constructor
.field private static final THUMBNAIL_ITEM_WIDTH:I = 0x0

.field public static final THUMBNAIL_TYPE:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final THUMBNAIL_TYPE_BUTTON_MARGIN_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final THUMBNAIL_TYPE_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final THUMBNAIL_TYPE_TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final THUMBNAIL_TYPE_TEXT_Y:I = 0x0

.field public static final UNKNOWN_TYPE:I = -0x1


# instance fields
.field private mActivityContext:Lcom/android/camera/AbstractCameraActivity;

.field private mAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCommand:Lcom/android/camera/command/MenuCommand;

.field private mCurrentType:I

.field private mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

.field private mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

.field private mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

.field private mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

.field private mDim:Z

.field private mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

.field private mThumbnailText:Lcom/android/camera/glwidget/TwGLItemThumbnailText;

.field private mToggle:Z

.field private mZOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    const v0, 0x7f070117

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_IMAGE_POS_X:I

    .line 57
    const v0, 0x7f070118

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y:I

    .line 58
    const v0, 0x7f070119

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    .line 59
    const v0, 0x7f07011a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    .line 60
    const v0, 0x7f07011b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_X:I

    .line 61
    const v0, 0x7f07011c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_Y:I

    .line 62
    const v0, 0x7f07011d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    .line 63
    const v0, 0x7f07011e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    .line 64
    const v0, 0x7f080016

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    .line 65
    const v0, 0x7f070120

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    .line 66
    const v0, 0x7f070121

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->CHECKBOX_POS_Y:I

    .line 67
    const v0, 0x7f070122

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_X:I

    .line 68
    const v0, 0x7f070123

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_Y:I

    .line 69
    const v0, 0x7f070124

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    .line 70
    const v0, 0x7f070125

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_WIDTH:I

    .line 71
    const v0, 0x7f070126

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    .line 72
    const v0, 0x7f070128

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_X:I

    .line 73
    const v0, 0x7f070129

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_Y:I

    .line 74
    const v0, 0x7f070127

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_WIDTH:I

    .line 75
    const v0, 0x7f07012a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_HEIGHT:I

    .line 77
    const v0, 0x7f07007a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_X:I

    .line 78
    const v0, 0x7f07007b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_Y:I

    .line 79
    const v0, 0x7f07007c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_WIDTH:I

    .line 80
    const v0, 0x7f07007d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_BUTTON_WIDTH:I

    .line 81
    const v0, 0x7f07007e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_BUTTON_HEIGHT:I

    .line 82
    const v0, 0x7f070080

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_POS_X:I

    .line 83
    const v0, 0x7f070081

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_POS_Y:I

    .line 84
    const v0, 0x7f07007f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_WIDTH:I

    .line 85
    const v0, 0x7f070082

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_HEIGHT:I

    .line 87
    const v0, 0x7f0700ba

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->SIDEBUTTON_TYPE_BUTTON_WIDTH:I

    .line 88
    const v0, 0x7f0700bb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->SIDEBUTTON_TYPE_BUTTON_HEIGHT:I

    .line 89
    const v0, 0x7f07012f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I

    .line 90
    const v0, 0x7f070130

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I

    .line 91
    const v0, 0x7f070131

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

    .line 92
    const v0, 0x7f070132

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I

    .line 93
    const v0, 0x7f070133

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    .line 94
    const v0, 0x7f070134

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    .line 95
    const v0, 0x7f070135

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I

    .line 96
    const v0, 0x7f070136

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I

    .line 97
    const v0, 0x7f080017

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_FONT_SIZE:I

    .line 98
    const v0, 0x7f070137

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    .line 99
    const v0, 0x7f070138

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->SEPARATOR_POS_X:I

    .line 100
    const v0, 0x7f07006a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    .line 101
    const v0, 0x7f07006c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN_Y:I

    .line 102
    const v0, 0x7f070068

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->THUMBNAIL_ITEM_WIDTH:I

    .line 103
    const v0, 0x7f07006d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_HEIGHT:I

    .line 104
    const v0, 0x7f07006e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_Y:I

    .line 106
    const/16 v0, 0xff

    const/16 v1, 0x8

    const/16 v2, 0x83

    const/16 v3, 0xd3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;FFFFLcom/android/camera/resourcedata/MenuResourceBundle;Lcom/android/camera/command/MenuCommand;I)V
    .locals 7
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "data"
    .parameter "command"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 163
    invoke-virtual {p1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mZOrder:I

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 133
    iput-boolean v6, p0, Lcom/android/camera/glwidget/TwGLItem;->mDim:Z

    .line 134
    iput-boolean v6, p0, Lcom/android/camera/glwidget/TwGLItem;->mToggle:Z

    .line 164
    iput-object p6, p0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    .line 165
    iput-object p7, p0, Lcom/android/camera/glwidget/TwGLItem;->mCommand:Lcom/android/camera/command/MenuCommand;

    .line 166
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 168
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    .line 170
    invoke-direct {p0, p8}, Lcom/android/camera/glwidget/TwGLItem;->initContents(I)V

    .line 171
    invoke-virtual {p0, p8}, Lcom/android/camera/glwidget/TwGLItem;->setContentType(I)V

    .line 173
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/MenuDimController;->addButton(Lcom/android/camera/glwidget/TwGLItem;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;FFLcom/android/camera/resourcedata/MenuResourceBundle;Lcom/android/camera/command/MenuCommand;I)V
    .locals 7
    .parameter "activityContext"
    .parameter "width"
    .parameter "height"
    .parameter "data"
    .parameter "command"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-virtual {p1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mZOrder:I

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 133
    iput-boolean v6, p0, Lcom/android/camera/glwidget/TwGLItem;->mDim:Z

    .line 134
    iput-boolean v6, p0, Lcom/android/camera/glwidget/TwGLItem;->mToggle:Z

    .line 150
    iput-object p4, p0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    .line 151
    iput-object p5, p0, Lcom/android/camera/glwidget/TwGLItem;->mCommand:Lcom/android/camera/command/MenuCommand;

    .line 152
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 154
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    .line 156
    invoke-direct {p0, p6}, Lcom/android/camera/glwidget/TwGLItem;->initContents(I)V

    .line 157
    invoke-virtual {p0, p6}, Lcom/android/camera/glwidget/TwGLItem;->setContentType(I)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/MenuDimController;->addButton(Lcom/android/camera/glwidget/TwGLItem;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/AbstractCameraActivity;Lcom/android/camera/resourcedata/MenuResourceBundle;Lcom/android/camera/command/MenuCommand;I)V
    .locals 3
    .parameter "activityContext"
    .parameter "data"
    .parameter "command"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mZOrder:I

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 133
    iput-boolean v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mDim:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mToggle:Z

    .line 138
    iput-object p2, p0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    .line 139
    iput-object p3, p0, Lcom/android/camera/glwidget/TwGLItem;->mCommand:Lcom/android/camera/command/MenuCommand;

    .line 140
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 142
    invoke-direct {p0, p4}, Lcom/android/camera/glwidget/TwGLItem;->initContents(I)V

    .line 143
    invoke-virtual {p0, p4}, Lcom/android/camera/glwidget/TwGLItem;->setContentType(I)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/MenuDimController;->addButton(Lcom/android/camera/glwidget/TwGLItem;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 8
    .parameter "glContext"

    .prologue
    const v4, 0x7f020205

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 177
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mZOrder:I

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 133
    iput-boolean v7, p0, Lcom/android/camera/glwidget/TwGLItem;->mDim:Z

    .line 134
    iput-boolean v7, p0, Lcom/android/camera/glwidget/TwGLItem;->mToggle:Z

    .line 179
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    move-object v1, p1

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 182
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const-string v1, "      "

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 184
    invoke-direct {p0}, Lcom/android/camera/glwidget/TwGLItem;->diableDrag()V

    .line 185
    return-void
.end method

.method private clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 293
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 295
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLItemDataButton;->clear()V

    .line 296
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 300
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    .line 301
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 305
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 306
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 310
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLItemDataText;->clear()V

    .line 311
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_4

    .line 314
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLItemDataCheckbox;->clear()V

    .line 316
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_5

    .line 319
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 320
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLItemThumbnailButton;->clear()V

    .line 321
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    .line 323
    :cond_5
    return-void
.end method

.method private diableDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0, v1}, Lcom/android/camera/glwidget/TwGLItem;->setDraggable(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setDraggable(Z)V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setDraggable(Z)V

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataText;->setDraggable(Z)V

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataCheckbox;->setDraggable(Z)V

    .line 204
    :cond_4
    return-void
.end method

.method private initContents(I)V
    .locals 16
    .parameter "type"

    .prologue
    .line 345
    const/4 v15, 0x0

    .line 346
    .local v15, width:F
    const/4 v14, 0x0

    .line 348
    .local v14, height:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v1, :cond_9

    if-nez p1, :cond_9

    .line 350
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-eqz v1, :cond_8

    .line 351
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/glwidget/TwGLItem;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/glwidget/TwGLItem;->getHeight()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v9

    sget v10, Lcom/android/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 357
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 360
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDim:Z

    if-nez v1, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 363
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_17

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v5

    .line 365
    .end local v15           #width:F
    .local v5, width:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    .line 435
    .end local v14           #height:F
    .local v6, height:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v1, :cond_1

    .line 436
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 438
    const/4 v1, 0x0

    if-eqz v1, :cond_14

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 445
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    .line 446
    new-instance v1, Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    sget v3, Lcom/android/camera/glwidget/TwGLItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    int-to-float v3, v3

    sub-float v3, v5, v3

    sget v4, Lcom/android/camera/glwidget/TwGLItem;->CHECKBOX_POS_Y:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v7}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/android/camera/glwidget/TwGLItemDataCheckbox;-><init>(Lcom/android/camera/AbstractCameraActivity;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/glwidget/TwGLItemDataCheckbox;->setBypassTouch(Z)V

    .line 449
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    if-nez v1, :cond_3

    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 450
    const/4 v1, 0x0

    if-eqz v1, :cond_15

    .line 451
    new-instance v7, Lcom/android/camera/glwidget/TwGLItemDataText;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_X:I

    int-to-float v9, v1

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_Y:I

    int-to-float v10, v1

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_WIDTH:I

    int-to-float v11, v1

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_HEIGHT:I

    int-to-float v12, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v13

    invoke-direct/range {v7 .. v13}, Lcom/android/camera/glwidget/TwGLItemDataText;-><init>(Lcom/android/camera/AbstractCameraActivity;FFFFI)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/glwidget/TwGLItemDataText;->setAlign(II)V

    .line 462
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/glwidget/TwGLItemDataText;->setBypassTouch(Z)V

    .line 464
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    if-nez v1, :cond_4

    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 465
    const/4 v1, 0x0

    if-eqz v1, :cond_16

    .line 466
    new-instance v7, Lcom/android/camera/glwidget/TwGLItemDataText;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_X:I

    int-to-float v9, v1

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_POS_Y:I

    int-to-float v10, v1

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_WIDTH:I

    int-to-float v11, v1

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_HEIGHT:I

    int-to-float v12, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v13

    invoke-direct/range {v7 .. v13}, Lcom/android/camera/glwidget/TwGLItemDataText;-><init>(Lcom/android/camera/AbstractCameraActivity;FFFFI)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/glwidget/TwGLItemDataText;->setAlign(II)V

    .line 477
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/glwidget/TwGLItemDataText;->setBypassTouch(Z)V

    .line 479
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v1, :cond_5

    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    .line 480
    new-instance v7, Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v12, v1

    const v13, 0x7f0201bb

    move v11, v5

    invoke-direct/range {v7 .. v13}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 483
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_6

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/glwidget/TwGLItem;->diableDrag()V

    .line 486
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_7

    .line 487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/android/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    invoke-direct {v2, v3, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setPaddings(Landroid/graphics/Rect;)V

    .line 489
    :cond_7
    return-void

    .line 354
    .end local v5           #width:F
    .end local v6           #height:F
    .restart local v14       #height:F
    .restart local v15       #width:F
    :cond_8
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    sget v8, Lcom/android/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto/16 :goto_0

    .line 367
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v1, :cond_c

    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_c

    .line 368
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-eqz v1, :cond_b

    .line 369
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/glwidget/TwGLItem;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/glwidget/TwGLItem;->getHeight()F

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/android/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 375
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnButtonHighlightChangedListener(Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;)V

    .line 379
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDim:Z

    if-nez v1, :cond_a

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 382
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_17

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v5

    .line 384
    .end local v15           #width:F
    .restart local v5       #width:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    .end local v14           #height:F
    .restart local v6       #height:F
    goto/16 :goto_1

    .line 372
    .end local v5           #width:F
    .end local v6           #height:F
    .restart local v14       #height:F
    .restart local v15       #width:F
    :cond_b
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/android/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto :goto_5

    .line 386
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v1, :cond_f

    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_f

    .line 387
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-eqz v1, :cond_e

    .line 388
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/glwidget/TwGLItem;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/glwidget/TwGLItem;->getHeight()F

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/android/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 394
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnButtonHighlightChangedListener(Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;)V

    .line 398
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDim:Z

    if-nez v1, :cond_d

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 401
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_17

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v5

    .line 403
    .end local v15           #width:F
    .restart local v5       #width:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    .end local v14           #height:F
    .restart local v6       #height:F
    goto/16 :goto_1

    .line 391
    .end local v5           #width:F
    .end local v6           #height:F
    .restart local v14       #height:F
    .restart local v15       #width:F
    :cond_e
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Lcom/android/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto :goto_6

    .line 405
    :cond_f
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_11

    .line 406
    new-instance v1, Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v7}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/android/camera/glwidget/TwGLItemThumbnailButton;-><init>(Lcom/android/camera/AbstractCameraActivity;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v1, :cond_10

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/camera/glwidget/TwGLItemThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/camera/glwidget/TwGLItemThumbnailButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 411
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/glwidget/TwGLItemThumbnailButton;->setTitle(Ljava/lang/String;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/glwidget/TwGLItemThumbnailButton;->setExtraDescription(Z)V

    .line 414
    new-instance v1, Lcom/android/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const/4 v3, 0x0

    sget v4, Lcom/android/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_Y:I

    int-to-float v4, v4

    sget v7, Lcom/android/camera/glwidget/TwGLItem;->THUMBNAIL_ITEM_WIDTH:I

    int-to-float v5, v7

    sget v7, Lcom/android/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_HEIGHT:I

    int-to-float v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v7}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/glwidget/TwGLItemThumbnailText;-><init>(Lcom/android/camera/AbstractCameraActivity;FFFFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/android/camera/glwidget/TwGLItemThumbnailText;

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/android/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/glwidget/TwGLItemThumbnailText;->setAlign(II)V

    .line 416
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/android/camera/glwidget/TwGLItemThumbnailText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/glwidget/TwGLItemThumbnailText;->setBypassTouch(Z)V

    move v6, v14

    .end local v14           #height:F
    .restart local v6       #height:F
    move v5, v15

    .end local v15           #width:F
    .restart local v5       #width:F
    goto/16 :goto_1

    .line 418
    .end local v5           #width:F
    .end local v6           #height:F
    .restart local v14       #height:F
    .restart local v15       #width:F
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-eqz v1, :cond_13

    .line 419
    new-instance v1, Lcom/android/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/glwidget/TwGLItem;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/glwidget/TwGLItem;->getHeight()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v7}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/glwidget/TwGLItemDataButton;-><init>(Lcom/android/camera/AbstractCameraActivity;FFFFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    .line 423
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setTitle(Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 426
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDim:Z

    if-nez v1, :cond_12

    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_12

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 429
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v1, :cond_17

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v1}, Lcom/android/camera/glwidget/TwGLItemDataButton;->getWidth()F

    move-result v5

    .line 431
    .end local v15           #width:F
    .restart local v5       #width:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v1}, Lcom/android/camera/glwidget/TwGLItemDataButton;->getHeight()F

    move-result v6

    .end local v14           #height:F
    .restart local v6       #height:F
    goto/16 :goto_1

    .line 421
    .end local v5           #width:F
    .end local v6           #height:F
    .restart local v14       #height:F
    .restart local v15       #width:F
    :cond_13
    new-instance v1, Lcom/android/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v7}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/android/camera/glwidget/TwGLItemDataButton;-><init>(Lcom/android/camera/AbstractCameraActivity;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    goto :goto_7

    .line 441
    .end local v14           #height:F
    .end local v15           #width:F
    .restart local v5       #width:F
    .restart local v6       #height:F
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_2

    .line 456
    :cond_15
    new-instance v7, Lcom/android/camera/glwidget/TwGLItemDataText;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_X:I

    int-to-float v9, v1

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_Y:I

    int-to-float v10, v1

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_WIDTH:I

    int-to-float v11, v1

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_HEIGHT:I

    int-to-float v12, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v13

    invoke-direct/range {v7 .. v13}, Lcom/android/camera/glwidget/TwGLItemDataText;-><init>(Lcom/android/camera/AbstractCameraActivity;FFFFI)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    .line 459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/glwidget/TwGLItemDataText;->setAlign(II)V

    goto/16 :goto_3

    .line 471
    :cond_16
    new-instance v7, Lcom/android/camera/glwidget/TwGLItemDataText;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_POS_X:I

    int-to-float v9, v1

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_POS_Y:I

    int-to-float v10, v1

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_WIDTH:I

    int-to-float v11, v1

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_HEIGHT:I

    int-to-float v12, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v13

    invoke-direct/range {v7 .. v13}, Lcom/android/camera/glwidget/TwGLItemDataText;-><init>(Lcom/android/camera/AbstractCameraActivity;FFFFI)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    .line 474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/glwidget/TwGLItemDataText;->setAlign(II)V

    goto/16 :goto_4

    .end local v5           #width:F
    .end local v6           #height:F
    .restart local v14       #height:F
    .restart local v15       #width:F
    :cond_17
    move v6, v14

    .end local v14           #height:F
    .restart local v6       #height:F
    move v5, v15

    .end local v15           #width:F
    .restart local v5       #width:F
    goto/16 :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->getMenuDimController()Lcom/android/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/MenuDimController;->removeButton(Lcom/android/camera/glwidget/TwGLItem;)V

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/glwidget/TwGLItem;->clearContent()V

    .line 286
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    .line 287
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLItem;->mCommand:Lcom/android/camera/command/MenuCommand;

    .line 288
    iput-object v1, p0, Lcom/android/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 289
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 290
    return-void
.end method

.method public getButtonType()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    return v0
.end method

.method public getCommand()Lcom/android/camera/command/MenuCommand;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCommand:Lcom/android/camera/command/MenuCommand;

    return-object v0
.end method

.method public getCommandId()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/android/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    .line 337
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x63

    goto :goto_0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    return v0
.end method

.method public getData()Lcom/android/camera/resourcedata/MenuResourceBundle;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    return-object v0
.end method

.method public getDim()Z
    .locals 1

    .prologue
    .line 916
    iget-boolean v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDim:Z

    return v0
.end method

.method public getScrollHint()Z
    .locals 1

    .prologue
    .line 912
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonHighlightChanged(Z)V
    .locals 2
    .parameter "isHighlighted"

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_0

    .line 946
    if-eqz p1, :cond_1

    .line 947
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    sget v1, Lcom/android/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataText;->setColor(I)V

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    sget v1, Lcom/android/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataText;->setColor(I)V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 12
    .parameter "view"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/high16 v9, 0x4000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 806
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    if-nez v3, :cond_0

    move v3, v4

    .line 901
    :goto_0
    return v3

    .line 807
    :cond_0
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    .line 808
    :cond_1
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    .line 810
    :cond_2
    iget v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v3, v5, :cond_3

    move v3, v4

    .line 811
    goto :goto_0

    .line 814
    :cond_3
    iget v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v3, v10, :cond_5

    .line 815
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/camera/AbstractCameraActivity;->setSelectedMenuId(I)V

    .line 816
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v6, 0x24

    if-eq v3, v6, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v6, 0xbce

    if-ne v3, v6, :cond_5

    .line 817
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->setToggleButton()V

    .line 818
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/camera/CameraSettings;->setSelfToggle(Z)V

    .line 822
    :cond_5
    iget v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_8

    .line 824
    :cond_6
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/android/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v2

    .line 826
    .local v2, menuid:I
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/android/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v0

    .line 827
    .local v0, commandid:I
    if-ne v0, v10, :cond_7

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraSettings;->getBurstMode()I

    move-result v3

    if-ne v3, v5, :cond_7

    .line 828
    const/16 v0, 0x44

    .line 831
    :cond_7
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/MenuBase;

    .line 832
    .local v1, menu:Lcom/android/camera/MenuBase;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/camera/MenuBase;->isAnimationFinished()Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v4

    .line 833
    goto/16 :goto_0

    .line 836
    .end local v0           #commandid:I
    .end local v1           #menu:Lcom/android/camera/MenuBase;
    .end local v2           #menuid:I
    :cond_8
    iget v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v3, v11, :cond_b

    .line 839
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x47

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/MenuBase;

    .line 841
    .restart local v1       #menu:Lcom/android/camera/MenuBase;
    if-eqz v1, :cond_9

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/camera/MenuBase;->isActive()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    move v3, v4

    .line 842
    goto/16 :goto_0

    :cond_a
    move-object v3, v1

    .line 844
    check-cast v3, Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    invoke-virtual {v3}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->resetSettingsText()V

    .line 845
    check-cast v1, Lcom/android/camera/glwidget/TwGLHDROptionMenu;

    .end local v1           #menu:Lcom/android/camera/MenuBase;
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/glwidget/TwGLHDROptionMenu;->setSelectedSettingMenuId(I)V

    .line 848
    :cond_b
    iget v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_f

    .line 850
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    instance-of v3, v3, Lcom/android/camera/Camera;

    if-eqz v3, :cond_d

    .line 851
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x1b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/MenuBase;

    .line 856
    .restart local v1       #menu:Lcom/android/camera/MenuBase;
    :goto_1
    if-eqz v1, :cond_c

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/camera/MenuBase;->isActive()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v3, v4

    .line 857
    goto/16 :goto_0

    .line 853
    .end local v1           #menu:Lcom/android/camera/MenuBase;
    :cond_d
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0xbd0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/MenuBase;

    .restart local v1       #menu:Lcom/android/camera/MenuBase;
    goto :goto_1

    :cond_e
    move-object v3, v1

    .line 859
    check-cast v3, Lcom/android/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v3}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->resetSettingsText()V

    .line 860
    check-cast v1, Lcom/android/camera/glwidget/TwGLSettingsMenu;

    .end local v1           #menu:Lcom/android/camera/MenuBase;
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/glwidget/TwGLSettingsMenu;->setSelectedSettingMenuId(I)V

    .line 863
    :cond_f
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mCommand:Lcom/android/camera/command/MenuCommand;

    if-eqz v3, :cond_10

    .line 864
    const-string v3, "TwGLItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Execute Menu!!!!, CurrentType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", CommandId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mCommand:Lcom/android/camera/command/MenuCommand;

    iget v6, p0, Lcom/android/camera/glwidget/TwGLItem;->mZOrder:I

    invoke-virtual {v3, v6}, Lcom/android/camera/command/MenuCommand;->setZOrder(I)V

    .line 866
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mCommand:Lcom/android/camera/command/MenuCommand;

    iget-object v6, p0, Lcom/android/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v6}, Lcom/android/camera/command/MenuCommand;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 868
    iget v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v3, v11, :cond_16

    .line 869
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mCommand:Lcom/android/camera/command/MenuCommand;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v6

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    div-float/2addr v7, v9

    const/high16 v8, 0x4040

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    div-float/2addr v8, v9

    const/high16 v9, 0x4040

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/command/MenuCommand;->setLaunchPosition(FF)V

    .line 878
    :goto_2
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mCommand:Lcom/android/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/android/camera/command/MenuCommand;->execute()V

    .line 881
    :cond_10
    iget v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_11

    iget v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v3, v11, :cond_15

    .line 883
    :cond_11
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/android/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v2

    .line 885
    .restart local v2       #menuid:I
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/android/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v0

    .line 886
    .restart local v0       #commandid:I
    if-ne v0, v10, :cond_12

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraSettings;->getBurstMode()I

    move-result v3

    if-ne v3, v5, :cond_12

    .line 887
    const/16 v0, 0x44

    .line 889
    :cond_12
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/MenuBase;

    .line 890
    .restart local v1       #menu:Lcom/android/camera/MenuBase;
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_13

    .line 891
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/android/camera/MenuBase;->isActive()Z

    move-result v3

    if-nez v3, :cond_17

    .line 892
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v6, Lcom/android/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/glview/TwGLText;->setBoldColor(ZI)V

    .line 897
    :cond_13
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v4, 0x24

    if-eq v3, v4, :cond_14

    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v4, 0xbce

    if-ne v3, v4, :cond_15

    .line 898
    :cond_14
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/camera/CameraSettings;->setSelfToggle(Z)V

    .end local v0           #commandid:I
    .end local v1           #menu:Lcom/android/camera/MenuBase;
    .end local v2           #menuid:I
    :cond_15
    move v3, v5

    .line 901
    goto/16 :goto_0

    .line 874
    :cond_16
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mCommand:Lcom/android/camera/command/MenuCommand;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v6

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/command/MenuCommand;->setLaunchPosition(FF)V

    goto/16 :goto_2

    .line 894
    .restart local v0       #commandid:I
    .restart local v1       #menu:Lcom/android/camera/MenuBase;
    .restart local v2       #menuid:I
    :cond_17
    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v6, Lcom/android/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/glview/TwGLText;->setBoldColor(ZI)V

    goto :goto_3
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getMatrix()[F

    move-result-object v2

    .line 665
    .local v2, matrix:[F
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 666
    .local v0, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getRotatable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 667
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 668
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 669
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, p1, v2, v0}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 672
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 674
    :cond_1
    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .parameter "view"
    .parameter "focusStatus"

    .prologue
    .line 798
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnFocusListener;->onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z

    .line 800
    const/4 v0, 0x1

    .line 802
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    .line 773
    const/4 v0, 0x1

    .line 779
    :goto_0
    return v0

    .line 776
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDim:Z

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    .line 786
    const/4 v0, 0x1

    .line 792
    :goto_0
    return v0

    .line 789
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDim:Z

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "event"

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_0

    .line 715
    const/4 v2, 0x1

    .line 730
    :goto_0
    return v2

    .line 718
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mDim:Z

    if-eqz v2, :cond_1

    .line 719
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 722
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mToggle:Z

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 723
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/android/camera/command/CommandIdMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/android/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraSettings;->getSelfMode()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    .line 724
    .local v0, id:I
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/MenuResourceDepot;->mResourceIDMap:Lcom/android/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2, v0}, Lcom/android/camera/resourcedata/ResourceIDMap;->get(I)Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    .line 725
    .local v1, res:Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 726
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget v4, v1, Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    .line 727
    :cond_2
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 728
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget v4, v1, Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setSubTitle(Ljava/lang/String;)V

    .line 730
    .end local v0           #id:I
    .end local v1           #res:Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public resetSettingsText()V
    .locals 3

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setBoldColor(ZI)V

    .line 923
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setAlpha(F)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p1}, Lcom/android/camera/glwidget/TwGLItemDataText;->setAlpha(F)V

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p1}, Lcom/android/camera/glwidget/TwGLItemDataCheckbox;->setAlpha(F)V

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setAlpha(F)V

    .line 279
    :cond_3
    return-void
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 208
    return-void
.end method

.method public setContentType(I)V
    .locals 8
    .parameter "type"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 492
    iget v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, p1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iput p1, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    .line 497
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 498
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 499
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 500
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 502
    invoke-virtual {p0, v5}, Lcom/android/camera/glwidget/TwGLItem;->setRotatable(Z)V

    .line 503
    invoke-virtual {p0, v5}, Lcom/android/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    .line 504
    invoke-virtual {p0, v5}, Lcom/android/camera/glwidget/TwGLItem;->setRotateAnimation(Z)V

    .line 506
    iget-boolean v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDim:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v3, :cond_3

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 512
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_5

    .line 513
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_4

    .line 514
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v7}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 515
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setAlpha(F)V

    .line 517
    :cond_4
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mData:Lcom/android/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_0

    .line 522
    :cond_5
    iget v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    if-nez v0, :cond_8

    .line 523
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 524
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 525
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 526
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    .line 528
    const/4 v0, 0x0

    if-eqz v0, :cond_7

    .line 530
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 531
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 537
    :goto_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 538
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 539
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 541
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 542
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SEPARATOR_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    sget v3, Lcom/android/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayout(FF)V

    .line 544
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 545
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 546
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 654
    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDim:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->setDim(Z)V

    .line 655
    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->resetSize()V

    goto/16 :goto_0

    .line 533
    :cond_7
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 534
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_1

    .line 547
    :cond_8
    iget v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, v3, :cond_9

    .line 548
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_6

    .line 549
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    .line 550
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    .line 551
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setTextPosition(FF)V

    .line 553
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 554
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    .line 555
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 556
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 557
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 558
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    .line 559
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    .line 560
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v7}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 562
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    .line 564
    :cond_9
    iget v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 565
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->THUMBNAIL_ITEM_WIDTH:I

    sget v3, Lcom/android/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    sget v3, Lcom/android/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN_Y:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/android/camera/glwidget/TwGLItemThumbnailText;

    invoke-virtual {v3}, Lcom/android/camera/glwidget/TwGLItemThumbnailText;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/glwidget/TwGLItemThumbnailButton;->setSize(FF)V

    .line 566
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->THUMBNAIL_ITEM_WIDTH:I

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/glwidget/TwGLItemThumbnailButton;->setResourceOffset(FF)Z

    .line 567
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 568
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/android/camera/glwidget/TwGLItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    .line 569
    :cond_a
    iget v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, v6, :cond_d

    .line 570
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 572
    const/4 v0, 0x0

    if-eqz v0, :cond_b

    .line 573
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_X:I

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    .line 575
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 576
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 583
    :goto_3
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 585
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 587
    const/4 v0, 0x0

    if-eqz v0, :cond_c

    .line 588
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_POS_X:I

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_DATA_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 589
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    .line 595
    :goto_4
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 596
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 598
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 599
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SEPARATOR_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    sget v3, Lcom/android/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayout(FF)V

    .line 601
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 602
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 603
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    .line 578
    :cond_b
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    .line 579
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 580
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_3

    .line 591
    :cond_c
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 592
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    goto :goto_4

    .line 604
    :cond_d
    iget v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    .line 605
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 607
    const/4 v0, 0x0

    if-eqz v0, :cond_e

    .line 608
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_POS_X:I

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    .line 610
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 611
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 612
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 619
    :goto_5
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 621
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 623
    const/4 v0, 0x0

    if-eqz v0, :cond_f

    .line 624
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_POS_X:I

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_DATA_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 625
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    .line 631
    :goto_6
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 632
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 634
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 635
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SEPARATOR_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_BUTTON_HEIGHT:I

    sget v3, Lcom/android/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayout(FF)V

    .line 637
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 638
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 639
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    .line 614
    :cond_e
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    .line 615
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 616
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_5

    .line 627
    :cond_f
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->OPTION_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 628
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    goto :goto_6

    .line 640
    :cond_10
    iget v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, v4, :cond_6

    .line 641
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_11

    .line 642
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/android/camera/glwidget/TwGLItem;->SIDEBUTTON_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/camera/glwidget/TwGLItem;->SIDEBUTTON_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    .line 643
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    const v1, 0x7f0700bc

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f0700bd

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    .line 644
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    .line 645
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    .line 646
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 648
    :cond_11
    invoke-virtual {p0, v3}, Lcom/android/camera/glwidget/TwGLItem;->setRotatable(Z)V

    .line 649
    invoke-virtual {p0, v3}, Lcom/android/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    .line 650
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/camera/glwidget/TwGLItem;->setRotateAnimationDuration(I)V

    .line 651
    invoke-virtual {p0, v3}, Lcom/android/camera/glwidget/TwGLItem;->setRotateAnimation(Z)V

    goto/16 :goto_2
.end method

.method public setDim(Z)V
    .locals 6
    .parameter "dimmed"

    .prologue
    const/4 v5, 0x0

    const v4, 0x3e4ccccd

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 216
    iput-boolean p1, p0, Lcom/android/camera/glwidget/TwGLItem;->mDim:Z

    .line 217
    if-eqz p1, :cond_8

    .line 218
    iget v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v3, :cond_4

    .line 219
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setDim(Z)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v4}, Lcom/android/camera/glwidget/TwGLItemDataText;->setAlpha(F)V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v4}, Lcom/android/camera/glwidget/TwGLItemDataCheckbox;->setAlpha(F)V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 264
    :cond_3
    :goto_0
    return-void

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_5

    .line 235
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setDim(Z)V

    .line 237
    :cond_5
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_6

    .line 238
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataText;->setAlpha(F)V

    .line 240
    :cond_6
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_7

    .line 241
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataCheckbox;->setAlpha(F)V

    .line 243
    :cond_7
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto :goto_0

    .line 248
    :cond_8
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v3, :cond_9

    .line 249
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setDim(Z)V

    .line 252
    :cond_9
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_a

    .line 253
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataText;->setAlpha(F)V

    .line 255
    :cond_a
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_b

    .line 256
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataCheckbox;->setAlpha(F)V

    .line 258
    :cond_b
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto :goto_0
.end method

.method public setHoverPopupGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 969
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setHoverPopupGravity(I)V

    .line 971
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setHoverPopupGravity(I)V

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 975
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupGravity(I)V

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_2

    .line 978
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/glwidget/TwGLItemThumbnailButton;->setHoverPopupGravity(I)V

    .line 980
    :cond_2
    return-void
.end method

.method public setHoverPopupOffset(II)V
    .locals 1
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 955
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setHoverPopupOffset(II)V

    .line 957
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setHoverPopupOffset(II)V

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->setHoverPopupOffset(II)V

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_2

    .line 964
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/glwidget/TwGLItemThumbnailButton;->setHoverPopupOffset(II)V

    .line 966
    :cond_2
    return-void
.end method

.method public setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V
    .locals 2
    .parameter "l"

    .prologue
    const/4 v1, 0x0

    .line 735
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    .line 736
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-nez v0, :cond_7

    .line 737
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_3

    .line 744
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataCheckbox;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 745
    :cond_3
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_4

    .line 746
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 747
    :cond_4
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 748
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 749
    :cond_5
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_6

    .line 750
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemThumbnailButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 767
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 768
    return-void

    .line 752
    :cond_7
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_8

    .line 753
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 754
    :cond_8
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_9

    .line 755
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 756
    :cond_9
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_a

    .line 757
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p0}, Lcom/android/camera/glwidget/TwGLItemDataText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 758
    :cond_a
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_b

    .line 759
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/android/camera/glwidget/TwGLItemDataCheckbox;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 760
    :cond_b
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_c

    .line 761
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 762
    :cond_c
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_d

    .line 763
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 764
    :cond_d
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_6

    .line 765
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/glwidget/TwGLItemThumbnailButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    goto :goto_0
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 2
    .parameter "l"

    .prologue
    const/4 v1, 0x0

    .line 678
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 679
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_7

    .line 680
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_2

    .line 685
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_3

    .line 687
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 688
    :cond_3
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_4

    .line 689
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 690
    :cond_4
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    .line 691
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 692
    :cond_5
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_6

    .line 693
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLItemThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 710
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 711
    return-void

    .line 695
    :cond_7
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_8

    .line 696
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 697
    :cond_8
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_9

    .line 698
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 699
    :cond_9
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_a

    .line 700
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataText:Lcom/android/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p0}, Lcom/android/camera/glwidget/TwGLItemDataText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 701
    :cond_a
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_b

    .line 702
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/android/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/android/camera/glwidget/TwGLItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 703
    :cond_b
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_c

    .line 704
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 705
    :cond_c
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_d

    .line 706
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 707
    :cond_d
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_6

    .line 708
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/android/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/glwidget/TwGLItemThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0
.end method

.method public setToggleButton()V
    .locals 5

    .prologue
    .line 926
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mToggle:Z

    .line 927
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    if-eqz v2, :cond_0

    .line 928
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v2}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setToggleButton()V

    .line 929
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/android/camera/command/CommandIdMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/android/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraSettings;->getSelfMode()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    .line 930
    .local v0, id:I
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/MenuResourceDepot;->mResourceIDMap:Lcom/android/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2, v0}, Lcom/android/camera/resourcedata/ResourceIDMap;->get(I)Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    .line 931
    .local v1, res:Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-eqz v1, :cond_0

    .line 932
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mDataButton:Lcom/android/camera/glwidget/TwGLItemDataButton;

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget v4, v1, Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/glwidget/TwGLItemDataButton;->setSubTitle(Ljava/lang/String;)V

    .line 934
    .end local v0           #id:I
    .end local v1           #res:Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_1

    .line 935
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->setToggleButton()V

    .line 936
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/android/camera/command/CommandIdMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/AbstractCameraActivity;->getCommandIdMap()Lcom/android/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/AbstractCameraActivity;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraSettings;->getSelfMode()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    .line 937
    .restart local v0       #id:I
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/android/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/MenuResourceDepot;->mResourceIDMap:Lcom/android/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2, v0}, Lcom/android/camera/resourcedata/ResourceIDMap;->get(I)Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    .line 938
    .restart local v1       #res:Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-eqz v1, :cond_1

    .line 939
    iget-object v2, p0, Lcom/android/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/android/camera/glwidget/TwGLItem;->mActivityContext:Lcom/android/camera/AbstractCameraActivity;

    iget v4, v1, Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/android/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    .line 941
    .end local v0           #id:I
    .end local v1           #res:Lcom/android/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_1
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .parameter "zOrder"

    .prologue
    .line 211
    iput p1, p0, Lcom/android/camera/glwidget/TwGLItem;->mZOrder:I

    .line 212
    return-void
.end method
