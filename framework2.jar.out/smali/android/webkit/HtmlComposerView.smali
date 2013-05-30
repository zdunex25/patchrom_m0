.class public Landroid/webkit/HtmlComposerView;
.super Landroid/webkit/WebView;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtmlComposerView$CursorDirection;,
        Landroid/webkit/HtmlComposerView$SelectionOffset;,
        Landroid/webkit/HtmlComposerView$ResultTransport;,
        Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;,
        Landroid/webkit/HtmlComposerView$HCWHandler;,
        Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;,
        Landroid/webkit/HtmlComposerView$ActionPopupWindow;,
        Landroid/webkit/HtmlComposerView$StylusEventListener;,
        Landroid/webkit/HtmlComposerView$MenuHandler;,
        Landroid/webkit/HtmlComposerView$InsertedImageHitListener;,
        Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;,
        Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;,
        Landroid/webkit/HtmlComposerView$InsertionPosition;
    }
.end annotation


# static fields
.field public static final HIT_INSERTED_IMAGE:I = 0x502

.field public static final ID_COPY:I = 0x1020021

.field public static final ID_COPY_ALL:I = 0x1020409

.field public static final ID_CUT:I = 0x1020020

.field public static final ID_CUT_ALL:I = 0x1020408

.field public static final ID_PASTE:I = 0x1020022

.field public static final ID_PASTE_CLIPBOARD:I = 0x102040a

.field public static final ID_REDO:I = 0x65

.field public static final ID_SELECT_ALL:I = 0x102001f

.field public static final ID_START_SELECTION:I = 0x1020028

.field public static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field public static final ID_UNDO:I = 0x2711

.field private static final IMM_PRIV_COMMAND_HIDE_CURSORCONTROL:Ljava/lang/String; = "com.samsung.inputmethod/cmd_hide_cursorcontrol"

.field private static final IMM_PRIV_COMMAND_SHOW_CURSORCONTROL:Ljava/lang/String; = "com.samsung.inputmethod/cmd_show_cursorcontrol"

.field public static final INVOKE_TALKBACK:I = 0x500

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerView"

.field public static final RICHLY_EDITING_STATE_BOLD:I = 0x1

.field public static final RICHLY_EDITING_STATE_BOLD_MIXED:I = 0x2

.field public static final RICHLY_EDITING_STATE_ITALIC:I = 0x4

.field public static final RICHLY_EDITING_STATE_ITALIC_MIXED:I = 0x8

.field public static final RICHLY_EDITING_STATE_NONE:I = 0x0

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST:I = 0x40

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST_MIXED:I = 0x80

.field public static final RICHLY_EDITING_STATE_UNDERLINE:I = 0x10

.field public static final RICHLY_EDITING_STATE_UNDERLINE_MIXED:I = 0x20

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST:I = 0x100

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST_MIXED:I = 0x200

.field private static final SCH_ALPHA:I = 0xff

.field private static final SCH_ALPHA_DIFF:I = 0x33

.field private static final TOUCHX_LEFT:I = 0x50

.field private static final TOUCHX_RIGHT:I = 0x50

.field private static final TOUCHY_BOTTOM:I = 0x3c

.field private static final TOUCHY_UP:I = 0x0

.field public static final TOUCH_DRAG_DELTA:I = 0xa

.field public static final UPDATE_RICHTEXT_TOOLBAR:I = 0x501

.field protected static mGVR:Landroid/graphics/Rect;

.field public static operSel:I


# instance fields
.field public DEBUG:Z

.field public final EMPTY_STRING:Ljava/lang/String;

.field private bLastSoftKeyPadStateShowing:Z

.field protected bSCHvisibleonFocus:Z

.field protected bShowSingleCursorHandler:Z

.field bitmap:Landroid/graphics/Bitmap;

.field private bm_height:I

.field private bm_width:I

.field bottomMiddleCropHandler:Landroid/graphics/Rect;

.field private bottomMiddleHandleEnabled:Z

.field public clpBrdStrg:Ljava/lang/String;

.field private defaultLoadString:Ljava/lang/String;

.field private extraHeightRegionToCover:I

.field extraRegiontoCover:I

.field private firstOutlineLeft:F

.field private firstOutlineTop:F

.field handlesPath:Landroid/graphics/Path;

.field protected iAlpha:I

.field private ignoreMaxLength:Z

.field public imageCanbeMoved:Z

.field public imageCanbeResized:Z

.field private imageSelectedX:I

.field private imageSelectedY:I

.field imagetRect:Landroid/graphics/RectF;

.field imeOptions:I

.field imgHeight:F

.field imgWidth:F

.field protected isContextMenuVisible:Z

.field public isImageSelected:Z

.field private isInComposingState:Z

.field private isPhone:Z

.field public isSCHCompletelyDrawn:Z

.field private isSelectionset:Z

.field public isTouchedImage:Z

.field public isTouchedSCH:Z

.field private isViewInFocus:Z

.field private lb_height:I

.field private lb_width:I

.field leftBottomCropHandler:Landroid/graphics/Rect;

.field private leftBottomHandleEnabled:Z

.field leftMiddleCropHandler:Landroid/graphics/Rect;

.field private leftMiddleHandleEnabled:Z

.field leftTopCropHandler:Landroid/graphics/Rect;

.field private leftTopHandleEnabled:Z

.field private lm_height:I

.field private lm_width:I

.field private lt_height:I

.field private lt_width:I

.field mAccumlationLength:I

.field protected mActionMoveSCH:Z

.field private mAdd:I

.field private mAltKeyIsPressed:Z

.field mCurHtmlLength:I

.field private mCurSelEnd:I

.field private mCurSelStart:I

.field private mDensity:F

.field private mEmojiIsActive:Z

.field mEndX:I

.field mEndY:I

.field private mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

.field public mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

.field public mImageRect:Landroid/graphics/Rect;

.field public mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

.field public mIsInReverse:Z

.field protected mIsSCHExpired:Z

.field private mIsSCHMenu:Z

.field private mIsTouchedCursor:Z

.field private mKeyIsLongPressed:Z

.field private mLongPressForActionPopup:Z

.field public mMaxHtmlLength:I

.field protected mMoveIsStarted:Z

.field mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

.field private mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

.field private mPrivateOptions:Ljava/lang/String;

.field private mQwertyInput:Landroid/text/method/QwertyKeyListener;

.field private mRHIResource:I

.field private mRectNotScrolled:Z

.field private mRemove:I

.field private mResizingHoverImage:Landroid/widget/ImageView;

.field public mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

.field private mSCHMoveFlag:Z

.field protected mSCHTimer:Ljava/util/Timer;

.field protected mSCHTimerTask:Ljava/util/TimerTask;

.field public mSCH_pos_origin_cursor:Landroid/graphics/Rect;

.field public mSCH_pos_origin_handle_y:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShiftKeyIsPressed:Z

.field mStartX:I

.field mStartY:I

.field mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

.field private mSymKeyIsPressed:Z

.field mTargetView:Landroid/webkit/HtmlComposerView;

.field private mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mWebViewClassic:Landroid/webkit/WebViewClassic;

.field private mXCenter:I

.field private mYCenter:I

.field private mZoomFactor:F

.field private misResizeControlsInitialised:Z

.field public myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

.field private originalHeight:I

.field private originalWidth:I

.field outLinePath:Landroid/graphics/Path;

.field p:Landroid/graphics/Path;

.field private prevOutlineHeight:F

.field private prevOutlineLeft:F

.field private prevOutlineTop:F

.field private prevOutlineWidth:F

.field private prevSpanComposerText:Ljava/lang/String;

.field prevX:I

.field prevY:I

.field private prevlen:I

.field rb_height:I

.field rb_width:I

.field region_rect_BM:Landroid/graphics/Region;

.field region_rect_LB:Landroid/graphics/Region;

.field region_rect_LM:Landroid/graphics/Region;

.field region_rect_LT:Landroid/graphics/Region;

.field region_rect_OutLine:Landroid/graphics/Region;

.field region_rect_RB:Landroid/graphics/Region;

.field region_rect_RM:Landroid/graphics/Region;

.field region_rect_RT:Landroid/graphics/Region;

.field region_rect_TM:Landroid/graphics/Region;

.field public resizingHandlerInActionMove:Z

.field rightBottomCropHandler:Landroid/graphics/Rect;

.field rightBottomHandleEnabled:Z

.field rightMiddleCropHandler:Landroid/graphics/Rect;

.field private rightMiddleHandleEnabled:Z

.field rightTopCropHandler:Landroid/graphics/Rect;

.field private rightTopHandleEnabled:Z

.field private rm_height:I

.field private rm_width:I

.field private rt_height:I

.field private rt_width:I

.field private spanComposerText:Landroid/text/SpannableStringBuilder;

.field public strTexttoSpeech:Ljava/lang/String;

.field public textSelected:Ljava/lang/String;

.field textWatcher:Landroid/text/TextWatcher;

.field tm_height:I

.field tm_width:I

.field topMiddleCropHandler:Landroid/graphics/Rect;

.field private topMiddleHandleEnabled:Z

.field widthOfHandle:I

.field public x_lastPosition:I

.field public y_lastPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/webkit/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    .line 466
    const/4 v0, 0x0

    sput v0, Landroid/webkit/HtmlComposerView;->operSel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 330
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 104
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 105
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    .line 106
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 107
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 108
    const v0, 0x20000ff

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 109
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 110
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 111
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 112
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 113
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 114
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 115
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 117
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 118
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 119
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 120
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 121
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 122
    iput v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 123
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 124
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 125
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 126
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 127
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 133
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 134
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 136
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    .line 138
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 139
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 140
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 141
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    .line 143
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 144
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 146
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    .line 149
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 150
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 151
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 152
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    .line 157
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 158
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 186
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 188
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 189
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 192
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 197
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 202
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 207
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 209
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 210
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 212
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 214
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 215
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 216
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 217
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 218
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 220
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 224
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 228
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 232
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 233
    iput v2, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 234
    iput v2, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 236
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 237
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 238
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 239
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 241
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 242
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 243
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 244
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 248
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 249
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 250
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 251
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 253
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 276
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 480
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 481
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 482
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 1793
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    .line 1794
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mStartX:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mStartY:I

    .line 1795
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mEndX:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mEndY:I

    .line 4739
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 4740
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    .line 4741
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 4742
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 5155
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    .line 5157
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    .line 5158
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_handle_y:I

    .line 5159
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSCHCompletelyDrawn:Z

    .line 5160
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    .line 5161
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    .line 5162
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mMoveIsStarted:Z

    .line 5163
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bSCHvisibleonFocus:Z

    .line 5170
    iput v2, p0, Landroid/webkit/HtmlComposerView;->x_lastPosition:I

    .line 5171
    iput v2, p0, Landroid/webkit/HtmlComposerView;->y_lastPosition:I

    .line 5172
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 5173
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mRectNotScrolled:Z

    .line 5175
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    .line 5176
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 5177
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsInReverse:Z

    .line 5178
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 5179
    new-instance v0, Ljava/util/Timer;

    const-string v1, "SCHTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    .line 5180
    new-instance v0, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    .line 5182
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 5184
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    .line 331
    iput-object p0, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 332
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 336
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 105
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    .line 106
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 107
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 108
    const v0, 0x20000ff

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 109
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 110
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 111
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 112
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 113
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 114
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 115
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 117
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 118
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 119
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 120
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 121
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 122
    iput v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 123
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 124
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 125
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 126
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 127
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 133
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 134
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 136
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    .line 138
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 139
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 140
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 141
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    .line 143
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 144
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 146
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    .line 149
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 150
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 151
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 152
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    .line 157
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 158
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 186
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 188
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 189
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 192
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 197
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 202
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 207
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 209
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 210
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 212
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 214
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 215
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 216
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 217
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 218
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 220
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 224
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 228
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 232
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 233
    iput v2, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 234
    iput v2, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 236
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 237
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 238
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 239
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 241
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 242
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 243
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 244
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 248
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 249
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 250
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 251
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 253
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 276
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 480
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 481
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 482
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 1793
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    .line 1794
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mStartX:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mStartY:I

    .line 1795
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mEndX:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mEndY:I

    .line 4739
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 4740
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    .line 4741
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 4742
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 5155
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    .line 5157
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    .line 5158
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_handle_y:I

    .line 5159
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSCHCompletelyDrawn:Z

    .line 5160
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    .line 5161
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    .line 5162
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mMoveIsStarted:Z

    .line 5163
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bSCHvisibleonFocus:Z

    .line 5170
    iput v2, p0, Landroid/webkit/HtmlComposerView;->x_lastPosition:I

    .line 5171
    iput v2, p0, Landroid/webkit/HtmlComposerView;->y_lastPosition:I

    .line 5172
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 5173
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mRectNotScrolled:Z

    .line 5175
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    .line 5176
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 5177
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsInReverse:Z

    .line 5178
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 5179
    new-instance v0, Ljava/util/Timer;

    const-string v1, "SCHTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    .line 5180
    new-instance v0, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    .line 5182
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 5184
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    .line 337
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 341
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 105
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    .line 106
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 107
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 108
    const v0, 0x20000ff

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 109
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 110
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 111
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 112
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 113
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 114
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 115
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 117
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 118
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 119
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 120
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 121
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 122
    iput v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 123
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 124
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 125
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 126
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 127
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 133
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 134
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 136
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    .line 138
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 139
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 140
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 141
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    .line 143
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 144
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 146
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    .line 149
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 150
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 151
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 152
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    .line 157
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 158
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 186
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 188
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 189
    iput v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 192
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 197
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 202
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 207
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 209
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 210
    iput v2, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 212
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 214
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 215
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 216
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 217
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 218
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 220
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 224
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 228
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 232
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 233
    iput v2, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 234
    iput v2, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 236
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 237
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 238
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 239
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 241
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 242
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 243
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 244
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 248
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 249
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 250
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 251
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 253
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 276
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 480
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 481
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 482
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 1793
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    .line 1794
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mStartX:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mStartY:I

    .line 1795
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mEndX:I

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mEndY:I

    .line 4739
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 4740
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    .line 4741
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 4742
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 5155
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    .line 5157
    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    .line 5158
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_handle_y:I

    .line 5159
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSCHCompletelyDrawn:Z

    .line 5160
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    .line 5161
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    .line 5162
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mMoveIsStarted:Z

    .line 5163
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bSCHvisibleonFocus:Z

    .line 5170
    iput v2, p0, Landroid/webkit/HtmlComposerView;->x_lastPosition:I

    .line 5171
    iput v2, p0, Landroid/webkit/HtmlComposerView;->y_lastPosition:I

    .line 5172
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 5173
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mRectNotScrolled:Z

    .line 5175
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    .line 5176
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 5177
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsInReverse:Z

    .line 5178
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 5179
    new-instance v0, Ljava/util/Timer;

    const-string v1, "SCHTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    .line 5180
    new-instance v0, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    .line 5182
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 5184
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    .line 342
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 346
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 104
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 105
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    .line 106
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 107
    const-string v1, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 108
    const v1, 0x20000ff

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 109
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 110
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 111
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 112
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 113
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 114
    const v1, 0x186a0

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 115
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 117
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 118
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 119
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 120
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 121
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 122
    iput v3, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 123
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 124
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 125
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 126
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 127
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 128
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 129
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 130
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 131
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 133
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 134
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 136
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    .line 138
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 139
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 140
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 141
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    .line 143
    iput v5, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 144
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 146
    iput v5, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    .line 149
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 150
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 151
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 152
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    .line 157
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 158
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 186
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 188
    iput v5, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 189
    iput v5, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 192
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 197
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 202
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 207
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 209
    iput v3, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 210
    iput v3, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 212
    const/16 v1, 0x14

    iput v1, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    .line 214
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 215
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 216
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 217
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 218
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 220
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 224
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 228
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 232
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 233
    iput v3, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 234
    iput v3, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 236
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 237
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 238
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 239
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 241
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 242
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 243
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 244
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 248
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 249
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 250
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 251
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 253
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 276
    iput-boolean v6, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 480
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 481
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 482
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 1793
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    .line 1794
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mStartX:I

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mStartY:I

    .line 1795
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mEndX:I

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mEndY:I

    .line 4739
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 4740
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    .line 4741
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 4742
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 5155
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    .line 5157
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    .line 5158
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mSCH_pos_origin_handle_y:I

    .line 5159
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isSCHCompletelyDrawn:Z

    .line 5160
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    .line 5161
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    .line 5162
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mMoveIsStarted:Z

    .line 5163
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->bSCHvisibleonFocus:Z

    .line 5170
    iput v3, p0, Landroid/webkit/HtmlComposerView;->x_lastPosition:I

    .line 5171
    iput v3, p0, Landroid/webkit/HtmlComposerView;->y_lastPosition:I

    .line 5172
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 5173
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mRectNotScrolled:Z

    .line 5175
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    .line 5176
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 5177
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mIsInReverse:Z

    .line 5178
    iput-boolean v6, p0, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 5179
    new-instance v1, Ljava/util/Timer;

    const-string v2, "SCHTimer"

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    .line 5180
    new-instance v1, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;

    invoke-direct {v1, p0}, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    .line 5182
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 5184
    iput-boolean v6, p0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    .line 347
    invoke-direct {p0, p2}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, data:Ljava/lang/String;
    const-string v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "data"
    .parameter "mimeType"

    .prologue
    const/16 v9, 0x50

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 352
    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerView;->setSoundEffectsEnabled(Z)V

    .line 353
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebViewProvider()Landroid/webkit/WebViewProvider;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewClassic;

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 354
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 355
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 356
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 357
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 359
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 360
    .local v6, metric:Landroid/util/DisplayMetrics;
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 362
    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    .line 364
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    .line 365
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    .line 367
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 368
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->XFAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 377
    :cond_0
    :goto_0
    new-instance v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 378
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 380
    const-string v1, "htmlcomposer"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HtmlComposerView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 383
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v8, v0}, Landroid/text/method/QwertyKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    .line 384
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 385
    iput-object p0, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 386
    new-instance v0, Landroid/webkit/HtmlComposerInputConnection;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerInputConnection;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 388
    new-instance v0, Landroid/webkit/HtmlComposerView$HCWHandler;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$HCWHandler;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    .line 391
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->setHoverPopupType(I)V

    .line 392
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 393
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 394
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    new-instance v1, Landroid/webkit/HtmlComposerView$1;

    invoke-direct {v1, p0}, Landroid/webkit/HtmlComposerView$1;-><init>(Landroid/webkit/HtmlComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 426
    return-void

    .line 369
    :cond_1
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 370
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_0

    .line 371
    :cond_2
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    .line 372
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 373
    :cond_3
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/webkit/HtmlComposerView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    return v0
.end method

.method static synthetic access$202(Landroid/webkit/HtmlComposerView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    return p1
.end method

.method static synthetic access$300(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    return v0
.end method

.method static synthetic access$302(Landroid/webkit/HtmlComposerView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    return p1
.end method

.method static synthetic access$502(Landroid/webkit/HtmlComposerView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    return p1
.end method

.method static synthetic access$600(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$700(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$800(Landroid/webkit/HtmlComposerView;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/HtmlComposerView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    return v0
.end method

.method private canSelectAll()Z
    .locals 1

    .prologue
    .line 3418
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3419
    const/4 v0, 0x1

    .line 3422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "src"
    .parameter "dst"

    .prologue
    const/4 v5, 0x0

    .line 3428
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 3429
    .local v3, source:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 3431
    .local v4, target:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 3432
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 3433
    .local v2, i:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 3434
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3443
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 3444
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3448
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return v5

    .line 3436
    .restart local v0       #buffer:[B
    .restart local v2       #i:I
    .restart local v3       #source:Ljava/io/FileInputStream;
    .restart local v4       #target:Ljava/io/FileOutputStream;
    :cond_0
    if-eqz v3, :cond_1

    .line 3437
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 3439
    :cond_1
    if-eqz v4, :cond_2

    .line 3440
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3442
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 3446
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 3447
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private createToolTip()V
    .locals 2

    .prologue
    .line 2027
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 2028
    new-instance v0, Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;-><init>(Landroid/webkit/HtmlComposerView;Landroid/content/Context;Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    .line 2031
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 2032
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->show()V

    .line 2033
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 2035
    :cond_1
    return-void
.end method

.method private displaySoftKeyboardForHtmlComposer()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3453
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3456
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 3458
    .local v1, showIme:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 3459
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3461
    :cond_0
    return-void

    .end local v1           #showIme:Z
    :cond_1
    move v1, v2

    .line 3456
    goto :goto_0
.end method

.method private drawSingleCursorHandler(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 4837
    const/16 v10, 0xc

    .line 4839
    .local v10, left_right_image_gap:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getCaretState()Z

    move-result v17

    if-nez v17, :cond_2

    .line 4965
    :cond_1
    :goto_0
    return-void

    .line 4844
    :cond_2
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4845
    .local v11, metric:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/Activity;

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4847
    iget v0, v11, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    const/high16 v18, 0x42c8

    mul-float v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v5, v17, v18

    .line 4849
    .local v5, density:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v12

    .line 4851
    .local v12, scale:F
    const-string v17, "HtmlComposerView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "drawSingleCursorHandler density = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " scale = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4854
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 4855
    .local v4, cursurRect:Landroid/graphics/Rect;
    if-eqz v4, :cond_1

    .line 4859
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 4860
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 4861
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 4862
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 4866
    iget v15, v4, Landroid/graphics/Rect;->left:I

    .line 4867
    .local v15, x:I
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v18

    add-int v16, v17, v18

    .line 4868
    .local v16, y:I
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 4869
    .local v14, visRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 4871
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 4874
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10809b6

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 4877
    .local v13, singleCursorhandler:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 4878
    .local v6, iSCHHeight:I
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 4879
    .local v8, iSCHWidth:I
    int-to-float v0, v6

    move/from16 v17, v0

    mul-float v17, v17, v5

    move/from16 v0, v17

    float-to-int v7, v0

    .line 4880
    .local v7, iSCHHeightByDensity:I
    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v17, v17, v5

    move/from16 v0, v17

    float-to-int v9, v0

    .line 4882
    .local v9, iSCHWidthByDensity:I
    add-int v17, v16, v6

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v17, v17, v16

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 4885
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 4887
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 4888
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimerTask;->cancel()Z

    .line 4889
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Timer;->purge()I

    goto/16 :goto_0

    .line 4893
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 4895
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x108075d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 4897
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 4898
    div-int/lit8 v17, v9, 0x2

    sub-int v17, v15, v17

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v18

    sub-int v18, v16, v18

    sub-int v18, v18, v7

    div-int/lit8 v19, v9, 0x2

    add-int v19, v19, v15

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v20

    sub-int v20, v16, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4911
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mIsInReverse:Z

    .line 4940
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isSCHCompletelyDrawn:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->iAlpha:I

    move/from16 v17, v0

    const/16 v18, 0xff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    .line 4943
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->iAlpha:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x33

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->iAlpha:I

    .line 4945
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerView;->iAlpha:I

    move/from16 v17, v0

    const/16 v18, 0xff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 4947
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 4949
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 4900
    :cond_7
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    div-int/lit8 v18, v8, 0x2

    sub-int v17, v17, v18

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 4901
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10809b8

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 4902
    sub-int v17, v15, v10

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v18

    sub-int v18, v16, v18

    sub-int v18, v18, v7

    sub-int v19, v15, v10

    add-int v19, v19, v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v20

    sub-int v20, v16, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 4903
    :cond_8
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    div-int/lit8 v18, v8, 0x2

    add-int v17, v17, v18

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    .line 4904
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10809b5

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 4905
    add-int v17, v15, v10

    sub-int v17, v17, v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v18

    sub-int v18, v16, v18

    sub-int v18, v18, v7

    add-int v19, v15, v10

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v20

    sub-int v20, v16, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 4907
    :cond_9
    div-int/lit8 v17, v9, 0x2

    sub-int v17, v15, v17

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v18

    sub-int v18, v16, v18

    sub-int v18, v18, v7

    div-int/lit8 v19, v9, 0x2

    add-int v19, v19, v15

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v20

    sub-int v20, v16, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 4913
    :cond_a
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 4915
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 4916
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimerTask;->cancel()Z

    .line 4917
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Timer;->purge()I

    goto/16 :goto_0

    .line 4921
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 4923
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 4924
    div-int/lit8 v17, v9, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v9, 0x2

    add-int v18, v18, v15

    add-int v19, v16, v7

    move/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4937
    :goto_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mIsInReverse:Z

    goto/16 :goto_2

    .line 4926
    :cond_d
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    div-int/lit8 v18, v8, 0x2

    sub-int v17, v17, v18

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    .line 4927
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10809b7

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 4928
    sub-int v17, v15, v10

    sub-int v18, v15, v10

    add-int v18, v18, v9

    add-int v19, v16, v7

    move/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    .line 4929
    :cond_e
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    div-int/lit8 v18, v8, 0x2

    add-int v17, v17, v18

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_f

    .line 4930
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10809b4

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 4931
    add-int v17, v15, v10

    sub-int v17, v17, v9

    add-int v18, v15, v10

    add-int v19, v16, v7

    move/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    .line 4933
    :cond_f
    div-int/lit8 v17, v9, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v9, 0x2

    add-int v18, v18, v15

    add-int v19, v16, v7

    move/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    .line 4956
    :cond_10
    const/16 v17, 0xff

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerView;->iAlpha:I

    .line 4962
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4963
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->isSCHCompletelyDrawn:Z

    goto/16 :goto_0
.end method

.method private drawWebImageSelectionControl(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 5018
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    .line 5021
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebTextSelectionControls;->DrawImageSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 5022
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v2, v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebTextSelectionControls;->DrawImageResizeMoveHandlers(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 5023
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 5030
    :goto_0
    return-void

    .line 5027
    :cond_0
    const-string v0, "HtmlComposerView"

    const-string v1, "DrawImageSelectionControls  mImageCopyInfo is null and invalidate()  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5028
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    goto :goto_0
.end method

.method private getCurrentOutlineBottom()F
    .locals 1

    .prologue
    .line 3983
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method private getCurrentOutlineHeight()I
    .locals 2

    .prologue
    .line 3975
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getCurrentOutlineRight()F
    .locals 1

    .prologue
    .line 3987
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method private getCurrentOutlineWidth()I
    .locals 2

    .prologue
    .line 3979
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getLoadableContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "filePath"

    .prologue
    .line 3464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3468
    .local v1, bufer:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 3470
    .local v4, fstream:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3471
    .local v5, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3474
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, strLine:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 3476
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3492
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v6           #strLine:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 3493
    .local v3, ep:Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " HtmlComposerView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3494
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .end local v3           #ep:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v2

    .line 3478
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #strLine:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3481
    .local v2, data:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 3482
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 3483
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 3484
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3486
    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v10, 0x104073f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v10, 0x1040740

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 3487
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getSelectedImageUri()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3500
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3517
    :cond_0
    :goto_0
    return-object v2

    .line 3502
    :cond_1
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3503
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 3504
    :try_start_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3505
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x229

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3510
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3515
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3517
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 3507
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3515
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3511
    :catch_0
    move-exception v0

    .line 3512
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private getSelectionOffsetImage()V
    .locals 2

    .prologue
    .line 3522
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3527
    :cond_0
    :goto_0
    return-void

    .line 3524
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3525
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "rect"

    .prologue
    .line 3533
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3543
    :cond_0
    :goto_0
    return-void

    .line 3535
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    new-instance v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;-><init>(Landroid/webkit/WebViewCore;)V

    iput-object v1, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 3536
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    const/16 v1, 0x8

    iput v1, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    .line 3537
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 3538
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 3540
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3541
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 3
    .parameter "rect"
    .parameter "imageoutLinePath"
    .parameter "imagehandlesPath"

    .prologue
    .line 3549
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3562
    :cond_0
    :goto_0
    return-void

    .line 3551
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    new-instance v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;-><init>(Landroid/webkit/WebViewCore;)V

    iput-object v1, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 3552
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    const/16 v1, 0x8

    iput v1, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    .line 3553
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 3554
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 3556
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p2, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    .line 3557
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iput-object p3, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    .line 3559
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3560
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getTargetView()Landroid/webkit/HtmlComposerView;
    .locals 1

    .prologue
    .line 3566
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method private handleBottomMiddleHandleDrag(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 4326
    const/4 v0, 0x0

    .line 4327
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 4328
    .local v1, deltaY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4329
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4330
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4331
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4332
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4334
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4335
    return-void
.end method

.method private handleLeftBottomHandleDrag(II)V
    .locals 8
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/16 v7, 0xa

    .line 4180
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 4181
    .local v2, deltaX:I
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 4182
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4183
    .local v0, deltaValueX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4184
    .local v1, deltaValueY:I
    const/4 v4, 0x1

    .line 4185
    .local v4, signX:I
    const/4 v5, 0x1

    .line 4187
    .local v5, signY:I
    if-lt v0, v7, :cond_0

    if-ge v1, v7, :cond_1

    .line 4213
    :cond_0
    :goto_0
    return-void

    .line 4189
    :cond_1
    if-gez v2, :cond_2

    .line 4190
    const/4 v4, -0x1

    .line 4191
    :cond_2
    if-gez v3, :cond_3

    .line 4192
    const/4 v5, -0x1

    .line 4193
    :cond_3
    if-eq v4, v5, :cond_0

    .line 4196
    if-ge v0, v1, :cond_4

    .line 4197
    mul-int v3, v0, v5

    .line 4204
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4205
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4208
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4209
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4210
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4211
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4212
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 4200
    :cond_4
    mul-int v2, v1, v4

    goto :goto_1
.end method

.method private handleLeftMiddleHandleDrag(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 4361
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    .line 4362
    .local v0, deltaX:I
    const/4 v1, 0x0

    .line 4363
    .local v1, deltaY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4364
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4365
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4366
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4367
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4368
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4369
    return-void
.end method

.method private handleLeftTopHandleDrag(II)V
    .locals 8
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/16 v7, 0xa

    .line 4216
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 4217
    .local v2, deltaX:I
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 4218
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4219
    .local v0, deltaValueX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4220
    .local v1, deltaValueY:I
    const/4 v4, 0x1

    .line 4221
    .local v4, signX:I
    const/4 v5, 0x1

    .line 4223
    .local v5, signY:I
    if-lt v0, v7, :cond_0

    if-ge v1, v7, :cond_1

    .line 4249
    :cond_0
    :goto_0
    return-void

    .line 4225
    :cond_1
    if-gez v2, :cond_2

    .line 4226
    const/4 v4, -0x1

    .line 4227
    :cond_2
    if-gez v3, :cond_3

    .line 4228
    const/4 v5, -0x1

    .line 4229
    :cond_3
    if-ne v4, v5, :cond_0

    .line 4232
    if-ge v0, v1, :cond_4

    .line 4233
    mul-int v3, v0, v5

    .line 4240
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4241
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4244
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4245
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4246
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4247
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4248
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 4236
    :cond_4
    mul-int v2, v1, v4

    goto :goto_1
.end method

.method private handleNavKeys(I)V
    .locals 7
    .parameter "keyCode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 3570
    packed-switch p1, :pswitch_data_0

    .line 3666
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(I)V

    .line 3668
    invoke-virtual {p0, v6}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 3670
    invoke-virtual {p0, v6}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 3671
    return-void

    .line 3572
    :pswitch_0
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_2

    .line 3573
    const-string v2, "MoveLeftAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3574
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3575
    .local v1, selectionType:I
    if-ne v5, v1, :cond_1

    .line 3576
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 3577
    .local v0, selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 3578
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 3579
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 3580
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 3581
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0

    .line 3582
    .end local v0           #selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    :cond_1
    if-nez v1, :cond_0

    .line 3583
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto :goto_0

    .line 3587
    .end local v1           #selectionType:I
    :cond_2
    const-string v2, "MoveLeft"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3589
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3590
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto :goto_0

    .line 3595
    :pswitch_1
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_4

    .line 3596
    const-string v2, "MoveRightAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3597
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3598
    .restart local v1       #selectionType:I
    if-ne v5, v1, :cond_3

    .line 3599
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 3600
    .restart local v0       #selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 3601
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 3602
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 3603
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 3604
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0

    .line 3605
    .end local v0           #selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    :cond_3
    if-nez v1, :cond_0

    .line 3606
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 3610
    .end local v1           #selectionType:I
    :cond_4
    const-string v2, "MoveRight"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3612
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3613
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 3618
    :pswitch_2
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_6

    .line 3619
    const-string v2, "MoveUpAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3620
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3621
    .restart local v1       #selectionType:I
    if-ne v5, v1, :cond_5

    .line 3622
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 3623
    .restart local v0       #selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 3624
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 3625
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 3626
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 3627
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_0

    .line 3628
    .end local v0           #selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    :cond_5
    if-nez v1, :cond_0

    .line 3629
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 3633
    .end local v1           #selectionType:I
    :cond_6
    const-string v2, "MoveUp"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3635
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3636
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 3641
    :pswitch_3
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_8

    .line 3642
    const-string v2, "MoveDownAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3643
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3644
    .restart local v1       #selectionType:I
    if-ne v5, v1, :cond_7

    .line 3645
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 3646
    .restart local v0       #selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 3647
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 3648
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 3649
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 3650
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_0

    .line 3651
    .end local v0           #selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    :cond_7
    if-nez v1, :cond_0

    .line 3652
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 3656
    .end local v1           #selectionType:I
    :cond_8
    const-string v2, "MoveDown"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3658
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3659
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto/16 :goto_0

    .line 3570
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleRightBottomHandleDrag(II)V
    .locals 8
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/16 v7, 0xa

    .line 4252
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 4253
    .local v2, deltaX:I
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 4254
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4255
    .local v0, deltaValueX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4256
    .local v1, deltaValueY:I
    const/4 v4, 0x1

    .line 4257
    .local v4, signX:I
    const/4 v5, 0x1

    .line 4259
    .local v5, signY:I
    if-lt v0, v7, :cond_0

    if-ge v1, v7, :cond_1

    .line 4286
    :cond_0
    :goto_0
    return-void

    .line 4261
    :cond_1
    if-gez v2, :cond_2

    .line 4262
    const/4 v4, -0x1

    .line 4263
    :cond_2
    if-gez v3, :cond_3

    .line 4264
    const/4 v5, -0x1

    .line 4265
    :cond_3
    if-ne v4, v5, :cond_0

    .line 4268
    if-ge v0, v1, :cond_4

    .line 4269
    mul-int v3, v0, v5

    .line 4276
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4277
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4281
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4282
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4283
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4284
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4285
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 4272
    :cond_4
    mul-int v2, v1, v4

    goto :goto_1
.end method

.method private handleRightMiddleHandleDrag(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 4350
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    .line 4351
    .local v0, deltaX:I
    const/4 v1, 0x0

    .line 4352
    .local v1, deltaY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4353
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4354
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4355
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4356
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4357
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4358
    return-void
.end method

.method private handleRightTopHandleDrag(II)V
    .locals 8
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/16 v7, 0xa

    .line 4289
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 4290
    .local v2, deltaX:I
    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 4291
    .local v3, deltaY:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4292
    .local v0, deltaValueX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4293
    .local v1, deltaValueY:I
    const/4 v4, 0x1

    .line 4294
    .local v4, signX:I
    const/4 v5, 0x1

    .line 4296
    .local v5, signY:I
    if-lt v0, v7, :cond_0

    if-ge v1, v7, :cond_1

    .line 4322
    :cond_0
    :goto_0
    return-void

    .line 4298
    :cond_1
    if-gez v2, :cond_2

    .line 4299
    const/4 v4, -0x1

    .line 4300
    :cond_2
    if-gez v3, :cond_3

    .line 4301
    const/4 v5, -0x1

    .line 4302
    :cond_3
    if-eq v4, v5, :cond_0

    .line 4305
    if-ge v0, v1, :cond_4

    .line 4306
    mul-int v3, v0, v5

    .line 4313
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4314
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4317
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4318
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4319
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4320
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4321
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 4309
    :cond_4
    mul-int v2, v1, v4

    goto :goto_1
.end method

.method private handleTopMiddleHandleDrag(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 4338
    const/4 v0, 0x0

    .line 4339
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 4340
    .local v1, deltaY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4341
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4342
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4343
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4344
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4346
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4347
    return-void
.end method

.method private handle_ACTION_DOWN(IIII)V
    .locals 3
    .parameter "contentX"
    .parameter "contentY"
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v2, 0x1

    .line 3992
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isOutLineRect(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3994
    const-string v0, "HtmlComposerView"

    const-string v1, "inside \"If outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3999
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isleftTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4000
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4001
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4002
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 4003
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 4005
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 4006
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 4007
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 4009
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 4081
    :goto_1
    return-void

    .line 3997
    :cond_0
    const-string v0, "HtmlComposerView"

    const-string v1, "inside \"else outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4010
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isleftBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4011
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4012
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4013
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 4014
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 4016
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 4017
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 4018
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 4020
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    goto :goto_1

    .line 4021
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isRightTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4022
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4023
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4024
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 4025
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 4026
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 4027
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 4028
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 4030
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    goto :goto_1

    .line 4031
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isRightBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4032
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4033
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4034
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 4036
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    goto :goto_1

    .line 4037
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isleftMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4038
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4039
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4040
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 4041
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 4042
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 4043
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 4044
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 4046
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 4047
    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isBottomMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4048
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4049
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4050
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 4051
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 4053
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 4054
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 4055
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 4057
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 4058
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isTopMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4059
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4060
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4061
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 4062
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 4063
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 4064
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 4065
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 4067
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 4068
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->isRightMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4069
    iput p3, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4070
    iput p4, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4071
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 4072
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 4073
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 4074
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    .line 4075
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    .line 4077
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 4079
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1
.end method

.method private handle_ACTION_MOVE(II)V
    .locals 3
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v2, 0x1

    .line 4084
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v2, :cond_5

    .line 4086
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleRightBottomHandleDrag(II)V

    .line 4131
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-eqz v0, :cond_2

    .line 4132
    :cond_1
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 4134
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eqz v0, :cond_4

    .line 4135
    :cond_3
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 4136
    :cond_4
    return-void

    .line 4088
    :cond_5
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v2, :cond_6

    .line 4090
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleLeftBottomHandleDrag(II)V

    .line 4091
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4092
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    goto :goto_0

    .line 4094
    :cond_6
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v2, :cond_7

    .line 4096
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleLeftTopHandleDrag(II)V

    .line 4097
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4098
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    goto :goto_0

    .line 4100
    :cond_7
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v2, :cond_8

    .line 4102
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleRightTopHandleDrag(II)V

    .line 4103
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4104
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    .line 4106
    :cond_8
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_9

    .line 4108
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleLeftMiddleHandleDrag(II)V

    .line 4109
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4110
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    .line 4112
    :cond_9
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_a

    .line 4114
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleTopMiddleHandleDrag(II)V

    .line 4115
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4116
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    .line 4118
    :cond_a
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_b

    .line 4120
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleRightMiddleHandleDrag(II)V

    .line 4121
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4122
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    .line 4124
    :cond_b
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_0

    .line 4126
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->handleBottomMiddleHandleDrag(II)V

    .line 4127
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4128
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0
.end method

.method private handle_ACTION_UP(II)V
    .locals 5
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 4139
    iput p1, p0, Landroid/webkit/HtmlComposerView;->prevX:I

    .line 4140
    iput p2, p0, Landroid/webkit/HtmlComposerView;->prevY:I

    .line 4141
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 4143
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v1, :cond_2

    .line 4146
    :cond_0
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 4147
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 4148
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 4149
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 4150
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 4151
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 4152
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 4154
    iget v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_1

    .line 4155
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4156
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4157
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 4158
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 4161
    :cond_1
    invoke-direct {p0, v3, v3}, Landroid/webkit/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 4162
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateAllHandles()V

    .line 4165
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 4166
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 4169
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 4170
    iget v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineLeft:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineLeft:F

    .line 4171
    iget v0, p0, Landroid/webkit/HtmlComposerView;->firstOutlineTop:F

    iput v0, p0, Landroid/webkit/HtmlComposerView;->prevOutlineTop:F

    .line 4172
    iput v4, p0, Landroid/webkit/HtmlComposerView;->prevOutlineHeight:F

    .line 4173
    iput v4, p0, Landroid/webkit/HtmlComposerView;->prevOutlineWidth:F

    .line 4176
    :cond_2
    return-void
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 2037
    const-string v0, "HtmlComposerView"

    const-string v1, "hide : Called."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2040
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 2041
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    .line 2043
    :cond_0
    return-void
.end method

.method private hideSoftKeyboardForHtmlComposer()V
    .locals 3

    .prologue
    .line 3674
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3675
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3676
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3678
    :cond_0
    return-void
.end method

.method private imageCopy(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 3681
    if-eqz p1, :cond_0

    .line 3682
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3683
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x204

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3685
    :cond_0
    return-void
.end method

.method private insertImageContent(Ljava/lang/String;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 3688
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3689
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x220

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3690
    :cond_0
    return-void
.end method

.method private isBottomMiddleImageHandle(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4521
    move v0, p1

    .line 4522
    .local v0, positionX:I
    move v1, p2

    .line 4524
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4526
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4527
    .local v2, temp:Landroid/graphics/Rect;
    const/4 v3, 0x1

    .line 4532
    :goto_0
    return v3

    .line 4530
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4532
    .restart local v2       #temp:Landroid/graphics/Rect;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isHoverPointWithinIconAreaForResizing(II)Z
    .locals 12
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const v11, 0x10805a8

    const/4 v4, 0x0

    const/high16 v10, 0x4000

    const/4 v5, 0x1

    const/4 v9, -0x1

    .line 3701
    iget-boolean v6, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-ne v5, v6, :cond_3

    .line 3702
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 3703
    .local v1, re:Landroid/graphics/RectF;
    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v6, v1, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3705
    iget-boolean v6, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHoverPointWithinIconAreaForResizing getX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", getY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3706
    :cond_0
    iget-boolean v6, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHoverPointWithinIconAreaForResizing outLinePath re.left re.top re.right re.bottom "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    :cond_1
    const/16 v0, 0x28

    .line 3709
    .local v0, delta:I
    iget v6, v1, Landroid/graphics/RectF;->left:F

    iget v7, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    float-to-int v2, v6

    .line 3710
    .local v2, xCenter:I
    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    float-to-int v3, v6

    .line 3712
    .local v3, yCenter:I
    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    .line 3714
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Top"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3715
    :cond_2
    const v4, 0x10805aa

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3716
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3717
    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    :goto_0
    move v4, v5

    .line 3770
    .end local v0           #delta:I
    .end local v1           #re:Landroid/graphics/RectF;
    .end local v2           #xCenter:I
    .end local v3           #yCenter:I
    :cond_3
    :goto_1
    return v4

    .line 3718
    .restart local v0       #delta:I
    .restart local v1       #re:Landroid/graphics/RectF;
    .restart local v2       #xCenter:I
    .restart local v3       #yCenter:I
    :cond_4
    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    .line 3720
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Top"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    :cond_5
    const v4, 0x10805a9

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3722
    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3723
    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto :goto_0

    .line 3724
    :cond_6
    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_8

    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_8

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8

    .line 3726
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Bottom"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    :cond_7
    const v4, 0x10805a9

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3728
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3729
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto :goto_0

    .line 3730
    :cond_8
    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_a

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_a

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_a

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_a

    .line 3732
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Bottom"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    :cond_9
    const v4, 0x10805aa

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3734
    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3735
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 3736
    :cond_a
    sub-int v6, v2, v0

    if-gt v6, p1, :cond_c

    add-int v6, v2, v0

    if-lt v6, p1, :cond_c

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_c

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_c

    .line 3738
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Top-Horizontal Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    :cond_b
    iput v11, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3740
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3741
    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 3742
    :cond_c
    sub-int v6, v2, v0

    if-gt v6, p1, :cond_e

    add-int v6, v2, v0

    if-lt v6, p1, :cond_e

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_e

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_e

    .line 3744
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Bottom-Horizontal Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    :cond_d
    iput v11, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3746
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3747
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 3748
    :cond_e
    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_10

    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_10

    sub-int v6, v3, v0

    if-gt v6, p2, :cond_10

    add-int v6, v3, v0

    if-lt v6, p2, :cond_10

    .line 3750
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_f

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Vertical Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    :cond_f
    const v4, 0x10805ab

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3752
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3753
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 3754
    :cond_10
    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_12

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_12

    sub-int v6, v3, v0

    if-gt v6, p2, :cond_12

    add-int v6, v3, v0

    if-lt v6, p2, :cond_12

    .line 3756
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_11

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Vertical Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    :cond_11
    const v4, 0x10805ab

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3758
    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3759
    iput v3, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 3761
    :cond_12
    iput v9, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 3762
    iput v9, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 3763
    iput v9, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I

    goto/16 :goto_1
.end method

.method private isInsertionAllowed(I)Z
    .locals 5
    .parameter "insertionLength"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3775
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    if-eqz v3, :cond_1

    .line 3786
    :cond_0
    :goto_0
    return v1

    .line 3777
    :cond_1
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x3

    .line 3778
    .local v0, avoidLength:I
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    add-int/2addr v3, p1

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 3780
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    if-lt v3, v0, :cond_0

    .line 3784
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 3785
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->htmlLength()I

    move-result v3

    iput v3, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 3786
    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    add-int/2addr v3, p1

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    if-le v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isOutLineRect(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4536
    move v0, p1

    .line 4537
    .local v0, positionX:I
    move v1, p2

    .line 4539
    .local v1, positionY:I
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4541
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 4542
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in \"If\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4545
    :cond_0
    const/4 v2, 0x1

    .line 4553
    :goto_0
    return v2

    .line 4548
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 4549
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in \"else\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4553
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRightBottomImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4450
    move v0, p1

    .line 4451
    .local v0, positionX:I
    move v1, p2

    .line 4453
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4455
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4457
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 4458
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "true inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4461
    :cond_0
    const/4 v3, 0x1

    .line 4470
    :goto_0
    return v3

    .line 4464
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4466
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 4467
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4470
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isRightMiddleImageHandle(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4490
    move v0, p1

    .line 4491
    .local v0, positionX:I
    move v1, p2

    .line 4493
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4494
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4496
    .local v2, temp:Landroid/graphics/Rect;
    const/4 v3, 0x1

    .line 4501
    :goto_0
    return v3

    .line 4499
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4501
    .restart local v2       #temp:Landroid/graphics/Rect;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isRightTopImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4422
    move v0, p1

    .line 4423
    .local v0, positionX:I
    move v1, p2

    .line 4425
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4427
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->isOutLineRect(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4429
    const-string v3, "HtmlComposerView"

    const-string v4, "Right top and outline inteersecting so disable outlineRect region as user intention is to resize not move"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4431
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4433
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 4434
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "true inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4437
    :cond_1
    const/4 v3, 0x1

    .line 4446
    :goto_0
    return v3

    .line 4440
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4442
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 4443
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isTopMiddleImageHandle(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4505
    move v0, p1

    .line 4506
    .local v0, positionX:I
    move v1, p2

    .line 4508
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4510
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4512
    .local v2, temp:Landroid/graphics/Rect;
    const/4 v3, 0x1

    .line 4517
    :goto_0
    return v3

    .line 4515
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4517
    .restart local v2       #temp:Landroid/graphics/Rect;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftBottomImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4399
    move v0, p1

    .line 4400
    .local v0, positionX:I
    move v1, p2

    .line 4402
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4403
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4405
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 4406
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "true inside rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    :cond_0
    const/4 v3, 0x1

    .line 4418
    :goto_0
    return v3

    .line 4412
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4414
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 4415
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside  rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4418
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftMiddleImageHandle(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4474
    move v0, p1

    .line 4475
    .local v0, positionX:I
    move v1, p2

    .line 4477
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4479
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4481
    .local v2, temp:Landroid/graphics/Rect;
    const/4 v3, 0x1

    .line 4486
    :goto_0
    return v3

    .line 4484
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4486
    .restart local v2       #temp:Landroid/graphics/Rect;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftTopImageHandle(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4375
    move v0, p1

    .line 4376
    .local v0, positionX:I
    move v1, p2

    .line 4378
    .local v1, positionY:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4380
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4382
    .local v2, temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 4383
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "true inside rectHandle left Top  PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    :cond_0
    const/4 v3, 0x1

    .line 4395
    :goto_0
    return v3

    .line 4389
    .end local v2           #temp:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4391
    .restart local v2       #temp:Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 4392
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle left Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4395
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private resetAndCreateOutlinePath()V
    .locals 6

    .prologue
    .line 4559
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4560
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4561
    return-void
.end method

.method private resetAndRecreateHandlesPath()V
    .locals 6

    .prologue
    .line 4564
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4565
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4566
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4568
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4569
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4571
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4572
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4574
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4575
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4577
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4578
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4580
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4581
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4583
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4584
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4586
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4587
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4588
    return-void
.end method

.method private restartIMEByHtmlComposerView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 3791
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3793
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 3794
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v3, v1, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 3795
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v3, v1, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 3796
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3798
    :cond_0
    return-void
.end method

.method private selectedImageOutlineRectUpdate()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 3965
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    if-eq v1, v3, :cond_0

    .line 3967
    iget v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 3968
    .local v0, selectedImageRect:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_0

    .line 3969
    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    .line 3971
    .end local v0           #selectedImageRect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private sendEventToUpdateToolbar()V
    .locals 2

    .prologue
    .line 3825
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3826
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x501

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3827
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    invoke-virtual {v1, v0}, Landroid/webkit/HtmlComposerView$HCWHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3828
    return-void
.end method

.method private setEditable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/16 v2, 0x207

    .line 3814
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3822
    :cond_0
    :goto_0
    return-void

    .line 3816
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3818
    if-eqz p1, :cond_2

    .line 3819
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_0

    .line 3821
    :cond_2
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_0
.end method

.method private updateAllHandles()V
    .locals 0

    .prologue
    .line 4593
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateLeftTopHandle()V

    .line 4594
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRightTopHandle()V

    .line 4595
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateLeftBottomHandle()V

    .line 4596
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRightBottomHandle()V

    .line 4597
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateTopMiddleHandle()V

    .line 4598
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateLeftMiddleHandle()V

    .line 4599
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateBottomMiddleHandle()V

    .line 4600
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRightMiddleHandle()V

    .line 4601
    return-void
.end method

.method private updateBottomMiddleHandle()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 4709
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4710
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4711
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 4712
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->bm_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 4713
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->bm_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 4718
    :goto_0
    return-void

    .line 4716
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateInputMethodExtractText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3838
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 3839
    .local v1, outText:Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 3841
    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    .line 3856
    :cond_0
    :goto_0
    return-void

    .line 3844
    :cond_1
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 3845
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 3846
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 3847
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;

    move-result-object v2

    .line 3848
    .local v2, selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    iget v3, v2, Landroid/webkit/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 3849
    iget v3, v2, Landroid/webkit/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 3851
    const-string v3, "HtmlComposerView"

    const-string v4, "getExtractedText "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3854
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3855
    invoke-virtual {v0, p0, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0
.end method

.method private updateLeftBottomHandle()V
    .locals 6

    .prologue
    .line 4637
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4639
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4640
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 4641
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->lb_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 4642
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->lb_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 4647
    :goto_0
    return-void

    .line 4645
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateLeftMiddleHandle()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    .line 4705
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 4706
    return-void
.end method

.method private updateLeftTopHandle()V
    .locals 5

    .prologue
    .line 4632
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 4633
    return-void
.end method

.method private updateOutlineRectangle(II)V
    .locals 4
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v3, 0x1

    .line 4650
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v3, :cond_0

    .line 4651
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 4652
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 4654
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v3, :cond_1

    .line 4655
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4656
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 4658
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v3, :cond_2

    .line 4659
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4660
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4662
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v3, :cond_3

    .line 4663
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 4664
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4666
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_4

    .line 4667
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 4668
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4670
    :cond_4
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_5

    .line 4671
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4672
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4674
    :cond_5
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_6

    .line 4675
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4676
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4678
    :cond_6
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_7

    .line 4679
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4680
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 4682
    :cond_7
    return-void
.end method

.method private updateRegions()V
    .locals 8

    .prologue
    const-wide v4, 0x3fc3333333333333L

    .line 4605
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v1, v2

    .line 4606
    .local v1, localImagWidth:I
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v0, v2

    .line 4607
    .local v0, localImagHeight:I
    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    .line 4609
    int-to-double v2, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    .line 4610
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    add-int/lit8 v6, v6, 0x14

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4611
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4614
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4616
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4618
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4620
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4622
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4624
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4626
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 4627
    return-void
.end method

.method private updateRightBottomHandle()V
    .locals 6

    .prologue
    .line 4685
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4686
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4687
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 4688
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 4689
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 4694
    :goto_0
    return-void

    .line 4692
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateRightMiddleHandle()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    .line 4721
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 4722
    return-void
.end method

.method private updateRightTopHandle()V
    .locals 5

    .prologue
    .line 4697
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 4698
    return-void
.end method

.method private updateTopMiddleHandle()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 4725
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4726
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4727
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 4728
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 4729
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 4734
    :goto_0
    return-void

    .line 4732
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateactionbar()V
    .locals 2

    .prologue
    .line 3831
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3835
    :cond_0
    :goto_0
    return-void

    .line 3833
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3834
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method


# virtual methods
.method public DoClearImageSelection()V
    .locals 2

    .prologue
    .line 2482
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v0, :cond_0

    .line 2484
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 2487
    :cond_0
    return-void
.end method

.method public GetLongPressForActioinPopup()Z
    .locals 1

    .prologue
    .line 4811
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mLongPressForActionPopup:Z

    return v0
.end method

.method public HtmlComposerDrawContent(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 4969
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    if-ne v9, v1, :cond_1

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v1

    if-ne v9, v1, :cond_1

    .line 4971
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    if-ne v9, v1, :cond_5

    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    if-nez v1, :cond_5

    .line 4974
    iput-boolean v10, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    .line 4975
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    if-eqz v1, :cond_0

    .line 4977
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 4979
    :cond_0
    iput-boolean v10, p0, Landroid/webkit/HtmlComposerView;->isTouchedSCH:Z

    .line 4980
    iput-boolean v10, p0, Landroid/webkit/HtmlComposerView;->isSCHCompletelyDrawn:Z

    .line 4981
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 4992
    :cond_1
    :goto_0
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    if-ne v1, v9, :cond_2

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-ne v1, v9, :cond_2

    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    if-nez v1, :cond_2

    .line 4994
    invoke-virtual {p0, v9}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v7

    .line 4995
    .local v7, normalCursorRect:Landroid/graphics/Rect;
    if-eqz v7, :cond_2

    .line 4996
    new-instance v6, Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0xf

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0xf

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0xf

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4997
    .local v6, imageCursorRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4998
    .local v0, cursorPath:Landroid/graphics/Path;
    iget v1, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4999
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5000
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 5001
    .local v8, paint:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5002
    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5007
    .end local v0           #cursorPath:Landroid/graphics/Path;
    .end local v6           #imageCursorRect:Landroid/graphics/Rect;
    .end local v7           #normalCursorRect:Landroid/graphics/Rect;
    .end local v8           #paint:Landroid/graphics/Paint;
    :cond_2
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 5008
    const-string v1, "HtmlComposerView"

    const-string v2, "drawWebImageSelectionControl is being called "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5009
    invoke-direct {p0, p1}, Landroid/webkit/HtmlComposerView;->drawWebImageSelectionControl(Landroid/graphics/Canvas;)V

    .line 5012
    :cond_3
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-ne v1, v9, :cond_4

    .line 5013
    iput-boolean v10, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    .line 5015
    :cond_4
    return-void

    .line 4987
    :cond_5
    invoke-direct {p0, p1}, Landroid/webkit/HtmlComposerView;->drawSingleCursorHandler(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public IsWordMisspelledAtPosition(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2516
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClassic;->IsWordMisspelledAtPosition(II)Z

    move-result v0

    return v0
.end method

.method public MoveCursorRight()V
    .locals 2

    .prologue
    .line 3050
    const-string v0, "MoveRight"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3051
    return-void
.end method

.method public SendInitComposing()V
    .locals 2

    .prologue
    .line 3342
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3343
    .local v0, imeBroadCast:Landroid/content/Intent;
    const-string v1, "imeAction:initComposing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3344
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3345
    return-void
.end method

.method public SetContextMenuVisible(Z)V
    .locals 0
    .parameter "_visible"

    .prologue
    .line 3291
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 3292
    return-void
.end method

.method public SetLongPressForActioinPopup(Z)V
    .locals 0
    .parameter "_set"

    .prologue
    .line 4815
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 4816
    return-void
.end method

.method public UpdateRichTextToolbar(Z)V
    .locals 2
    .parameter "isClear"

    .prologue
    const/4 v1, 0x1

    .line 3402
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    if-eqz v0, :cond_1

    .line 3403
    if-eq p1, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-ne v0, v1, :cond_2

    .line 3404
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    .line 3411
    :cond_1
    :goto_0
    return-void

    .line 3405
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    if-ne v0, v1, :cond_3

    .line 3406
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    invoke-interface {v0, v1}, Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    goto :goto_0

    .line 3408
    :cond_3
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    goto :goto_0
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0
    .parameter "watcher"

    .prologue
    .line 4746
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    .line 4747
    return-void
.end method

.method public append(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 2258
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 2259
    return-void
.end method

.method public canCopy()Z
    .locals 1

    .prologue
    .line 2262
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2263
    const/4 v0, 0x1

    .line 2266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCut()Z
    .locals 1

    .prologue
    .line 2270
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2271
    const/4 v0, 0x1

    .line 2274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPaste()Z
    .locals 1

    .prologue
    .line 2278
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2279
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2280
    const/4 v0, 0x1

    .line 2283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRedo()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2337
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2354
    :cond_0
    :goto_0
    return v3

    .line 2339
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2340
    .local v0, canRedo:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2341
    .local v2, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 2342
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2343
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20f

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2348
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2353
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2354
    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 2345
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 2353
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2349
    :catch_0
    move-exception v1

    .line 2350
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public canUndo()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2358
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2376
    :cond_0
    :goto_0
    return v3

    .line 2360
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2361
    .local v0, canUndo:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2362
    .local v2, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 2363
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2364
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20d

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2369
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2374
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2376
    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 2366
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 2374
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2370
    :catch_0
    move-exception v1

    .line 2371
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public changeFontBackColorForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontColor"

    .prologue
    .line 1616
    const-string v0, "BackColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    return-void
.end method

.method public changeFontColorForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontColor"

    .prologue
    .line 1620
    const-string v0, "ForeColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    return-void
.end method

.method public changeFontNameForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontName"

    .prologue
    .line 1624
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1625
    const-string v0, "FontName"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1627
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1628
    return-void
.end method

.method public changeFontSize(Ljava/lang/String;)V
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 1638
    const-string v0, "FontValue"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1640
    return-void
.end method

.method public changeFontSizeForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 1631
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1632
    const-string v0, "FontSize"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1634
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1635
    return-void
.end method

.method public ckeckIfSelectionAtBoundry()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 2380
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2397
    :cond_0
    :goto_0
    return v2

    .line 2382
    :cond_1
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2383
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2384
    :try_start_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2385
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x217

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2390
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2395
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2397
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 2387
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 2395
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2391
    :catch_0
    move-exception v0

    .line 2392
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public cleanTempResources()V
    .locals 2

    .prologue
    .line 2401
    const-string v0, "HtmlComposerView"

    const-string v1, "cleanTempResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->deleteTempDirectory()V

    .line 2403
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2406
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableBidirection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2407
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2408
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 2410
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectAllSec()Z

    .line 2412
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 2413
    return-void
.end method

.method public clearComposingSelection()V
    .locals 4

    .prologue
    .line 2415
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2416
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x219

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2417
    :cond_0
    return-void
.end method

.method public clearImageSelection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5186
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlComposerView  clearImageSelection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5188
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    .line 5189
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlComposerView  clearImageSelection  Clearing selection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5190
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 5191
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 5192
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    .line 5193
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 5194
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 5195
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    .line 5197
    :cond_0
    return-void
.end method

.method public commitInputMethodText(Ljava/lang/String;I)V
    .locals 3
    .parameter "text"
    .parameter "numOfcharsToDeleteFromCursorPos"

    .prologue
    .line 2420
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2431
    :cond_0
    :goto_0
    return-void

    .line 2422
    :cond_1
    if-lez p2, :cond_2

    .line 2423
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitInputMethodText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2425
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 2428
    :cond_2
    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 2429
    const-string v0, "InsertText"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_0
.end method

.method public copy()V
    .locals 2

    .prologue
    .line 1643
    const-string v0, "Copy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    return-void
.end method

.method public cut()V
    .locals 2

    .prologue
    .line 1647
    const-string v0, "Cut"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    return-void
.end method

.method public delete()V
    .locals 4

    .prologue
    .line 2441
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getImageSelectRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2442
    .local v0, cursurRect:Landroid/graphics/Rect;
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete() -- cursurRect.left  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cursurRect.top =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewClassic;->setTextSelecitonManualAtContentPoint(II)Z

    .line 2444
    const-string v1, "Delete"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 2446
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 2
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 2449
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2455
    :cond_0
    :goto_0
    return-void

    .line 2451
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2452
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2454
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 2458
    const-string v0, "HtmlComposerView"

    const-string v1, " htmlcomposer destroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2462
    const-string v0, "HtmlComposerView"

    const-string v1, "htmlcomposer destroy() hide "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 2466
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    if-eqz v0, :cond_1

    .line 2467
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->setTargetNull()V

    .line 2468
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 2471
    :cond_1
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 2472
    return-void
.end method

.method public disableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2475
    invoke-direct {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 2476
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 2477
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v0, :cond_0

    .line 2478
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 2479
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 21
    .parameter "event"

    .prologue
    .line 637
    const/16 v19, 0x0

    .line 638
    .local v19, retVal:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/16 v16, 0x1

    .line 639
    .local v16, down:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v17

    .line 640
    .local v17, keyCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v15

    .line 642
    .local v15, MetaState:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 643
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_0
    const/16 v4, 0x39

    move/from16 v0, v17

    if-ne v0, v4, :cond_1

    .line 647
    if-eqz v16, :cond_6

    .line 648
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 653
    :cond_1
    :goto_1
    const/16 v4, 0x7a

    move/from16 v0, v17

    if-eq v0, v4, :cond_3

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_2

    const/16 v4, 0x97

    move/from16 v0, v17

    if-eq v0, v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_8

    const/16 v4, 0x15

    move/from16 v0, v17

    if-ne v0, v4, :cond_8

    .line 655
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_4

    .line 656
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_7

    .line 657
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 658
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToBeginningOfLine()V

    .line 665
    :cond_4
    :goto_2
    const/16 v19, 0x1

    .line 889
    .end local v19           #retVal:Z
    :goto_3
    return v19

    .line 638
    .end local v15           #MetaState:I
    .end local v16           #down:Z
    .end local v17           #keyCode:I
    .restart local v19       #retVal:Z
    :cond_5
    const/16 v16, 0x0

    goto :goto_0

    .line 650
    .restart local v15       #MetaState:I
    .restart local v16       #down:Z
    .restart local v17       #keyCode:I
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    goto :goto_1

    .line 660
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 661
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToBeginningOfLine()V

    .line 662
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_2

    .line 666
    :cond_8
    const/16 v4, 0x7b

    move/from16 v0, v17

    if-eq v0, v4, :cond_a

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_9

    const/16 v4, 0x91

    move/from16 v0, v17

    if-eq v0, v4, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_d

    const/16 v4, 0x16

    move/from16 v0, v17

    if-ne v0, v4, :cond_d

    .line 668
    :cond_a
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_b

    .line 669
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_c

    .line 670
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 671
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToEndOfLine()V

    .line 678
    :cond_b
    :goto_4
    const/16 v19, 0x1

    goto :goto_3

    .line 673
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 674
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToEndOfLine()V

    .line 675
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_4

    .line 679
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_13

    const/16 v4, 0x13

    move/from16 v0, v17

    if-eq v0, v4, :cond_e

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_13

    .line 680
    :cond_e
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_11

    const/16 v4, 0x13

    move/from16 v0, v17

    if-ne v0, v4, :cond_11

    .line 681
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_10

    .line 682
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorBegining()V

    .line 698
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 699
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 685
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToBeginningOfDocument()V

    .line 686
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5

    .line 688
    :cond_11
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_f

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_f

    .line 689
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_12

    .line 690
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorEnd()V

    goto :goto_5

    .line 693
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToEndOfDocument()V

    .line 694
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5

    .line 700
    :cond_13
    const/16 v4, 0x5c

    move/from16 v0, v17

    if-eq v0, v4, :cond_14

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_17

    const/16 v4, 0x99

    move/from16 v0, v17

    if-ne v0, v4, :cond_17

    .line 702
    :cond_14
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_15

    .line 703
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_16

    .line 704
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 705
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToPageUp()V

    .line 706
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 707
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 716
    :cond_15
    :goto_6
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 710
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 711
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToPageUp()V

    .line 712
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 713
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_6

    .line 717
    :cond_17
    const/16 v4, 0x5d

    move/from16 v0, v17

    if-eq v0, v4, :cond_18

    const/high16 v4, 0x20

    if-eq v15, v4, :cond_1b

    const/16 v4, 0x93

    move/from16 v0, v17

    if-ne v0, v4, :cond_1b

    .line 719
    :cond_18
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_19

    .line 720
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_1a

    .line 721
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 722
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorToPageDown()V

    .line 723
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 724
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 733
    :cond_19
    :goto_7
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 727
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 728
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->moveCursorSelectionToPageDown()V

    .line 729
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 730
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_7

    .line 736
    :cond_1b
    const/high16 v4, 0x20

    if-eq v15, v4, :cond_21

    .line 737
    const/16 v4, 0x92

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x94

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x96

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x98

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x9e

    move/from16 v0, v17

    if-ne v0, v4, :cond_21

    .line 742
    :cond_1c
    if-eqz v16, :cond_21

    .line 743
    const/16 v4, 0x92

    move/from16 v0, v17

    if-ne v0, v4, :cond_1d

    .line 744
    const/16 v17, 0x14

    .line 745
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 746
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 747
    :cond_1d
    const/16 v4, 0x94

    move/from16 v0, v17

    if-ne v0, v4, :cond_1e

    .line 748
    const/16 v17, 0x15

    .line 749
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 750
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 751
    :cond_1e
    const/16 v4, 0x96

    move/from16 v0, v17

    if-ne v0, v4, :cond_1f

    .line 752
    const/16 v17, 0x16

    .line 753
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 754
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 755
    :cond_1f
    const/16 v4, 0x98

    move/from16 v0, v17

    if-ne v0, v4, :cond_20

    .line 756
    const/16 v17, 0x13

    .line 757
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 758
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 759
    :cond_20
    const/16 v4, 0x9e

    move/from16 v0, v17

    if-ne v0, v4, :cond_21

    .line 760
    const/4 v2, 0x0

    .line 762
    .local v2, newKeyEvent:Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2           #newKeyEvent:Landroid/view/KeyEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/16 v8, 0x70

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 772
    .restart local v2       #newKeyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 778
    .end local v2           #newKeyEvent:Landroid/view/KeyEvent;
    :cond_21
    const/16 v4, 0x13

    move/from16 v0, v17

    if-lt v0, v4, :cond_29

    const/16 v4, 0x16

    move/from16 v0, v17

    if-gt v0, v4, :cond_29

    .line 779
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v20

    .line 780
    .local v20, selctionAtBoundry:I
    if-nez v20, :cond_23

    .line 781
    if-eqz v16, :cond_22

    .line 782
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 783
    :cond_22
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 785
    :cond_23
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_26

    const/16 v4, 0x16

    move/from16 v0, v17

    if-eq v0, v4, :cond_24

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_26

    .line 786
    :cond_24
    if-eqz v16, :cond_25

    .line 787
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 788
    :cond_25
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 790
    :cond_26
    const/4 v4, 0x2

    move/from16 v0, v20

    if-ne v0, v4, :cond_35

    const/16 v4, 0x13

    move/from16 v0, v17

    if-eq v0, v4, :cond_27

    const/16 v4, 0x15

    move/from16 v0, v17

    if-ne v0, v4, :cond_35

    .line 791
    :cond_27
    if-eqz v16, :cond_28

    .line 792
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 793
    :cond_28
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 796
    .end local v20           #selctionAtBoundry:I
    :cond_29
    const/16 v4, 0x3e

    move/from16 v0, v17

    if-ne v4, v0, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-nez v4, :cond_2b

    .line 797
    if-eqz v16, :cond_2a

    .line 798
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 799
    const-string v4, "InsertText"

    const-string v5, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 801
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 802
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 803
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 805
    :cond_2a
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 807
    :cond_2b
    const/16 v4, 0x3d

    move/from16 v0, v17

    if-ne v4, v0, :cond_2e

    .line 808
    if-eqz v16, :cond_2d

    .line 809
    const-string v4, "InsertText"

    const-string v5, "    "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 811
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 813
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-ne v4, v5, :cond_2c

    .line 814
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 816
    :cond_2c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 818
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2d
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 820
    :cond_2e
    const/16 v4, 0x42

    move/from16 v0, v17

    if-eq v0, v4, :cond_2f

    const/16 v4, 0xa0

    move/from16 v0, v17

    if-ne v0, v4, :cond_31

    .line 821
    :cond_2f
    if-eqz v16, :cond_30

    .line 822
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 823
    const-string v4, "InsertText"

    const-string v5, "\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 825
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 826
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 827
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 829
    :cond_30
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 831
    :cond_31
    const/16 v4, 0x71

    move/from16 v0, v17

    if-eq v0, v4, :cond_32

    const/16 v4, 0x72

    move/from16 v0, v17

    if-ne v0, v4, :cond_33

    .line 832
    :cond_32
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 834
    :cond_33
    const/16 v4, 0x1d

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x1f

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x32

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x34

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x36

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x35

    move/from16 v0, v17

    if-ne v0, v4, :cond_35

    :cond_34
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_35

    if-nez v16, :cond_35

    .line 838
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCtrlPressed and keyCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    sparse-switch v17, :sswitch_data_0

    .line 882
    :cond_35
    if-eqz v19, :cond_36

    .line 883
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 884
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 886
    .restart local v3       #imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    goto/16 :goto_3

    .line 842
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canSelectAll()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 843
    const/16 v18, 0x0

    .line 844
    .local v18, result:Z
    const v4, 0x102001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v18

    .line 845
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    move/from16 v19, v18

    .line 846
    goto/16 :goto_3

    .line 851
    .end local v18           #result:Z
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 852
    const v4, 0x1020021

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 857
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 858
    const v4, 0x1020022

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 863
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 864
    const v4, 0x1020020

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 869
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canUndo()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 870
    const/16 v4, 0x2711

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 875
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->canRedo()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 876
    const/16 v4, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 889
    :cond_36
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 840
    nop

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_1
        0x32 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_5
        0x36 -> :sswitch_4
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 929
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 930
    const/4 v0, 0x1

    return v0
.end method

.method public doResizeImage(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2490
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2491
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x221

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2492
    :cond_0
    return-void
.end method

.method public drawSelectionControl()V
    .locals 1

    .prologue
    .line 4770
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 4771
    return-void
.end method

.method public drawSelectionControl(Z)V
    .locals 3
    .parameter "isTextChanged"

    .prologue
    const/4 v2, 0x1

    .line 4774
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4788
    :cond_0
    :goto_0
    return-void

    .line 4776
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4777
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4779
    :cond_2
    if-ne v2, p1, :cond_4

    .line 4780
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Web_EnableOptionEditTextDuringFullHwr"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4781
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->sendNotificationToIME(Z)V

    .line 4783
    :cond_3
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_0

    .line 4785
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Web_EnableOptionEditTextDuringFullHwr"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4786
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->sendNotificationToIME(Z)V

    goto :goto_0
.end method

.method public enableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2548
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 2549
    invoke-direct {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 2550
    return-void
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "command"
    .parameter "value"

    .prologue
    .line 2495
    const-string v1, "Insert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2497
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2498
    .local v0, length:I
    invoke-direct {p0, v0}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2500
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v4, 0x104073f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v4, 0x1040740

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2513
    .end local v0           #length:I
    :goto_0
    return-void

    .line 2504
    .restart local v0       #length:I
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_1

    .line 2507
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 2512
    .end local v0           #length:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public executeIndent()V
    .locals 2

    .prologue
    .line 1651
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1652
    const-string v0, "Indent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1654
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1655
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 1656
    return-void
.end method

.method public executeOutdent()V
    .locals 2

    .prologue
    .line 1659
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1660
    const-string v0, "Outdent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1662
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1663
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 1664
    return-void
.end method

.method public getBodyHTML()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2553
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2570
    :cond_0
    :goto_0
    return-object v2

    .line 2555
    :cond_1
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2556
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 2557
    :try_start_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2558
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x200

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2563
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2568
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2570
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 2560
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 2568
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2564
    :catch_0
    move-exception v0

    .line 2565
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getCaretState()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 4819
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4832
    :cond_0
    :goto_0
    return v2

    .line 4821
    :cond_1
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v3, v2}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4822
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v1

    .line 4823
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x20c

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4825
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4830
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4831
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCaretState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4832
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 4826
    :catch_0
    move-exception v0

    .line 4827
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4828
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4830
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public declared-synchronized getComposingState()Z
    .locals 1

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConetextmenuVisibility()Z
    .locals 1

    .prologue
    .line 2574
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    return v0
.end method

.method public getContentX()I
    .locals 4

    .prologue
    .line 5240
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, v2, Landroid/webkit/WebViewClassic;->mLastTouchX:I

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mScrollX:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 5241
    .local v0, contentX:I
    return v0
.end method

.method public getContentY()I
    .locals 4

    .prologue
    .line 5245
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v2, v2, Landroid/webkit/WebViewClassic;->mLastTouchY:I

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v0

    .line 5246
    .local v0, contentY:I
    return v0
.end method

.method public getCurrentFontSize()I
    .locals 4

    .prologue
    .line 2579
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2580
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2581
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x222

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2584
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2588
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2590
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 2585
    :catch_0
    move-exception v0

    .line 2586
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2588
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getCurrentFontValue()I
    .locals 4

    .prologue
    .line 2595
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2596
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2597
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x225

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2600
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2604
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2606
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 2601
    :catch_0
    move-exception v0

    .line 2602
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2604
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getCursorPressed()Z
    .locals 1

    .prologue
    .line 2611
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mIsPressingHandle:Z

    return v0
.end method

.method public getCursorRect(Z)Landroid/graphics/Rect;
    .locals 6
    .parameter "giveContentRect"

    .prologue
    .line 4791
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 4806
    :goto_0
    return-object v4

    .line 4793
    :cond_1
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v4

    .line 4794
    .local v1, paramArray:[Ljava/lang/Object;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 4795
    .local v2, rect:Landroid/graphics/Rect;
    new-instance v3, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v3, p0, v1, v2}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4796
    .local v3, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    monitor-enter v3

    .line 4797
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    const/16 v5, 0x209

    invoke-virtual {v4, v5, v3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4800
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4805
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4806
    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_0

    .line 4801
    :catch_0
    move-exception v0

    .line 4802
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4803
    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4805
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public getHTML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2615
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    .line 2616
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 2620
    :goto_0
    return-object v1

    .line 2617
    :cond_0
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2618
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2620
    goto :goto_0
.end method

.method public getImageSize(II)Landroid/graphics/Rect;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2286
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2305
    :goto_0
    return-object v4

    .line 2287
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2288
    .local v2, rect:Landroid/graphics/Rect;
    const-string v4, "HtmlComposerView"

    const-string v5, "Manju before sending"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 2290
    .local v1, paramArray:[Ljava/lang/Object;
    new-instance v3, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v3, p0, v1, v2}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2291
    .local v3, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    monitor-enter v3

    .line 2292
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2293
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    const/16 v5, 0x226

    invoke-virtual {v4, v5, v3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2298
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2303
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2304
    const-string v4, "HtmlComposerView"

    const-string v5, "Manju after sending"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_0

    .line 2295
    :cond_2
    :try_start_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    monitor-exit v3

    goto :goto_0

    .line 2303
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 2299
    :catch_0
    move-exception v0

    .line 2300
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 2624
    iget v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    return v0
.end method

.method public getMailContent()Landroid/webkit/WebHTMLMarkupData;
    .locals 4

    .prologue
    .line 2628
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    .line 2629
    .local v0, data:Landroid/webkit/WebHTMLMarkupData;
    if-nez v0, :cond_1

    .line 2637
    :cond_0
    :goto_0
    return-object v0

    .line 2631
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v1

    .line 2632
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2633
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2634
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2635
    invoke-virtual {v0, v1}, Landroid/webkit/WebHTMLMarkupData;->setHTMLFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMailHTML()Landroid/webkit/WebHTMLMarkupData;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2641
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2659
    :cond_0
    :goto_0
    return-object v3

    .line 2643
    :cond_1
    new-instance v1, Landroid/webkit/WebHTMLMarkupData;

    invoke-direct {v1}, Landroid/webkit/WebHTMLMarkupData;-><init>()V

    .line 2644
    .local v1, mailMarkupData:Landroid/webkit/WebHTMLMarkupData;
    new-instance v2, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v3, v1}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2645
    .local v2, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    monitor-enter v2

    .line 2646
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2647
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x206

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2652
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2657
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2659
    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebHTMLMarkupData;

    goto :goto_0

    .line 2649
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 2657
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2653
    :catch_0
    move-exception v0

    .line 2654
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2663
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2679
    :cond_0
    :goto_0
    return-object v2

    .line 2664
    :cond_1
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2665
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 2666
    :try_start_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2667
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x202

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2672
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2677
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2679
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 2669
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 2677
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2673
    :catch_0
    move-exception v0

    .line 2674
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2683
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedImageRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 2309
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2333
    :goto_0
    return-object v4

    .line 2310
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2311
    .local v1, rect:Landroid/graphics/Rect;
    const/4 v3, -0x1

    .line 2312
    .local v3, setValue:I
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 2313
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 2314
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 2315
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 2316
    new-instance v2, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v1}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2317
    .local v2, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isComposerImageTouched()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2318
    monitor-enter v2

    .line 2319
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2320
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    const/16 v5, 0x227

    invoke-virtual {v4, v5, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2325
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2330
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2333
    :cond_2
    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_0

    .line 2322
    :cond_3
    :try_start_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 2330
    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 2326
    :catch_0
    move-exception v0

    .line 2327
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2528
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    .line 2740
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->endOffset:I

    return v0
.end method

.method public getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2744
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Landroid/webkit/HtmlComposerView$SelectionOffset;

    invoke-direct {v3, p0, v4, v4}, Landroid/webkit/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkit/HtmlComposerView;II)V

    .line 2763
    :goto_0
    return-object v3

    .line 2746
    :cond_1
    new-instance v2, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v5, v5}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2747
    .local v2, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    monitor-enter v2

    .line 2748
    :try_start_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2749
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x201

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2754
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2759
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2761
    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 2763
    .local v1, pnt:Landroid/graphics/Point;
    new-instance v3, Landroid/webkit/HtmlComposerView$SelectionOffset;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, p0, v4, v5}, Landroid/webkit/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkit/HtmlComposerView;II)V

    goto :goto_0

    .line 2751
    .end local v1           #pnt:Landroid/graphics/Point;
    :cond_2
    :try_start_3
    new-instance v3, Landroid/webkit/HtmlComposerView$SelectionOffset;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, p0, v4, v5}, Landroid/webkit/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkit/HtmlComposerView;II)V

    monitor-exit v2

    goto :goto_0

    .line 2759
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2755
    :catch_0
    move-exception v0

    .line 2756
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getSelectionSec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2536
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 2767
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/HtmlComposerView$SelectionOffset;->startOffset:I

    return v0
.end method

.method public getShowSingleCursorHandlerState()Z
    .locals 1

    .prologue
    .line 2771
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    return v0
.end method

.method public getStateInRichlyEditableText()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2720
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2736
    :cond_0
    :goto_0
    return v2

    .line 2722
    :cond_1
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2723
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2724
    :try_start_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2725
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21e

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2730
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2734
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2736
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 2727
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 2734
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2731
    :catch_0
    move-exception v0

    .line 2732
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2687
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 2688
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .line 2689
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2690
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    aget-char v0, v2, v3

    .line 2691
    .local v0, chrVal:I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    const-string v1, ""

    .line 2692
    :cond_1
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getText() Not Null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    .end local v0           #chrVal:I
    :cond_2
    return-object v1
.end method

.method public getTextAroundCursor(ILandroid/webkit/HtmlComposerView$CursorDirection;)Ljava/lang/String;
    .locals 6
    .parameter "n"
    .parameter "cursorDirection"

    .prologue
    const/4 v3, 0x0

    .line 2698
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2716
    :cond_0
    :goto_0
    return-object v3

    .line 2700
    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p2, v1, v4

    .line 2701
    .local v1, paramArray:[Ljava/lang/Object;
    new-instance v2, Landroid/webkit/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v1, v3}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2702
    .local v2, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v2

    .line 2703
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2704
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x1fd

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2709
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2714
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2716
    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 2706
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 2714
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2710
    :catch_0
    move-exception v0

    .line 2711
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;
    .locals 1

    .prologue
    .line 2540
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v0

    return-object v0
.end method

.method protected handle_onTouchEvent(IIIII)Z
    .locals 15
    .parameter "action"
    .parameter "contentX"
    .parameter "contentY"
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    .line 1312
    packed-switch p1, :pswitch_data_0

    .line 1459
    :cond_0
    :goto_0
    const/4 v13, 0x1

    :goto_1
    return v13

    .line 1314
    :pswitch_0
    iget-object v13, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    goto :goto_0

    .line 1317
    :pswitch_1
    const/4 v13, 0x1

    iput-boolean v13, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 1319
    const/4 v13, 0x1

    iget-boolean v14, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-ne v13, v14, :cond_0

    .line 1320
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/HtmlComposerView;->handle_ACTION_DOWN(IIII)V

    .line 1321
    const/4 v13, 0x1

    iget-boolean v14, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    if-ne v13, v14, :cond_1

    .line 1322
    iget-object v13, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    .line 1325
    :cond_1
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v13

    iput v13, p0, Landroid/webkit/HtmlComposerView;->originalWidth:I

    .line 1326
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v13

    iput v13, p0, Landroid/webkit/HtmlComposerView;->originalHeight:I

    goto :goto_0

    .line 1334
    :pswitch_2
    const/4 v13, 0x1

    iget-boolean v14, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-ne v13, v14, :cond_0

    const/4 v13, 0x1

    iget-boolean v14, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    if-ne v13, v14, :cond_0

    .line 1336
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->handle_ACTION_MOVE(II)V

    .line 1337
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    goto :goto_0

    .line 1343
    :pswitch_3
    iget-object v13, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/WebSettingsClassic;->getEditableSupport()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1344
    const-string v13, "HtmlComposerView"

    const-string v14, "making selection set to true"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget-boolean v13, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    if-nez v13, :cond_0

    .line 1347
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 1348
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 1349
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1353
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v9

    .line 1355
    .local v9, rect:Landroid/graphics/Rect;
    iget-boolean v13, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-nez v13, :cond_4

    iget v13, v9, Landroid/graphics/Rect;->left:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    iget v13, v9, Landroid/graphics/Rect;->top:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    .line 1358
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getSelectedImageUri()Ljava/lang/String;

    move-result-object v6

    .line 1360
    .local v6, imageUri:Ljava/lang/String;
    iget-object v13, p0, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    iget-object v14, p0, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    invoke-interface {v14, v6}, Landroid/webkit/HtmlComposerView$InsertedImageHitListener;->onIsSAMMFile(Ljava/lang/String;)Z

    move-result v14

    if-ne v13, v14, :cond_3

    .line 1362
    const-string v13, "HtmlComposerView"

    const-string v14, "ACTION_UP: Is a SAMM File"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 1365
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1367
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 1368
    .local v7, msg:Landroid/os/Message;
    const/16 v13, 0x502

    iput v13, v7, Landroid/os/Message;->what:I

    .line 1369
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1371
    iget-object v13, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    if-eqz v13, :cond_2

    .line 1372
    iget-object v13, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    invoke-virtual {v13, v7}, Landroid/webkit/HtmlComposerView$HCWHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1375
    :cond_2
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1377
    .end local v7           #msg:Landroid/os/Message;
    :cond_3
    const-string v13, "HtmlComposerView"

    const-string v14, "ACTION_UP: Is not a SAMM File"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    iget-object v13, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v13, v9}, Landroid/webkit/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 1382
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto/16 :goto_0

    .line 1384
    .end local v6           #imageUri:Ljava/lang/String;
    :cond_4
    const/4 v13, 0x1

    iget-boolean v14, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-ne v13, v14, :cond_0

    .line 1387
    const/4 v13, 0x1

    iget-boolean v14, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    if-ne v13, v14, :cond_5

    .line 1388
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->handle_ACTION_UP(II)V

    .line 1389
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1394
    :cond_5
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v5

    .line 1395
    .local v5, finalWidth:I
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v4

    .line 1397
    .local v4, finalHeight:I
    const/4 v10, 0x0

    .line 1398
    .local v10, sameImageFlag:Z
    iget v13, p0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    iget v14, p0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    invoke-virtual {p0, v13, v14}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v8

    .line 1400
    .local v8, oldImageRect:Landroid/graphics/Rect;
    iget v13, v9, Landroid/graphics/Rect;->left:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_6

    iget v13, v9, Landroid/graphics/Rect;->right:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_6

    .line 1401
    iget v13, v8, Landroid/graphics/Rect;->left:I

    iget v14, v9, Landroid/graphics/Rect;->left:I

    if-ne v13, v14, :cond_6

    iget v13, v8, Landroid/graphics/Rect;->right:I

    iget v14, v9, Landroid/graphics/Rect;->right:I

    if-ne v13, v14, :cond_6

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v9, Landroid/graphics/Rect;->top:I

    if-ne v13, v14, :cond_6

    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    iget v14, v9, Landroid/graphics/Rect;->bottom:I

    if-ne v13, v14, :cond_6

    .line 1403
    const/4 v10, 0x1

    .line 1407
    :cond_6
    const/4 v13, 0x1

    iget-boolean v14, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    if-ne v13, v14, :cond_a

    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    iget v13, p0, Landroid/webkit/HtmlComposerView;->originalWidth:I

    if-ne v13, v5, :cond_7

    iget v13, p0, Landroid/webkit/HtmlComposerView;->originalHeight:I

    if-eq v13, v4, :cond_a

    .line 1410
    :cond_7
    const-string v13, "HtmlComposerView"

    const-string v14, "doResizeImage called - Image is going to resize "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget v13, p0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    iget v14, p0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    invoke-virtual {p0, v13, v14}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v12

    .line 1412
    .local v12, selectedImgRect:Landroid/graphics/Rect;
    iget v13, v12, Landroid/graphics/Rect;->left:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_8

    iget v13, v12, Landroid/graphics/Rect;->top:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_8

    .line 1413
    invoke-virtual {p0, v5, v4}, Landroid/webkit/HtmlComposerView;->doResizeImage(II)V

    .line 1414
    :cond_8
    const/4 v13, 0x0

    iput-boolean v13, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    .line 1415
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 1416
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1417
    const/4 v13, 0x0

    iput-boolean v13, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 1418
    const/4 v13, 0x0

    iput-boolean v13, p0, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    .line 1420
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1452
    .end local v12           #selectedImgRect:Landroid/graphics/Rect;
    :cond_9
    :goto_2
    iget-object v13, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    goto/16 :goto_0

    .line 1423
    :cond_a
    iget-boolean v13, p0, Landroid/webkit/HtmlComposerView;->imageCanbeResized:Z

    if-nez v13, :cond_b

    const/4 v13, 0x1

    iget-boolean v14, p0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    if-ne v13, v14, :cond_b

    .line 1424
    const-string v13, "InsertHTML"

    invoke-direct {p0, v13}, Landroid/webkit/HtmlComposerView;->insertImageContent(Ljava/lang/String;)V

    .line 1426
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1427
    const/4 v13, 0x0

    iput-boolean v13, p0, Landroid/webkit/HtmlComposerView;->imageCanbeMoved:Z

    .line 1428
    const/4 v13, 0x0

    iput-boolean v13, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    .line 1429
    iget-object v13, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v14, 0x0

    iput-object v14, v13, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 1430
    const/4 v13, 0x0

    iput-boolean v13, p0, Landroid/webkit/HtmlComposerView;->isTouchedImage:Z

    .line 1432
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    .line 1434
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_2

    .line 1437
    :cond_b
    iget v13, v9, Landroid/graphics/Rect;->left:I

    move/from16 v0, p2

    if-lt v0, v13, :cond_c

    iget v13, v9, Landroid/graphics/Rect;->right:I

    move/from16 v0, p2

    if-gt v0, v13, :cond_c

    iget v13, v9, Landroid/graphics/Rect;->top:I

    move/from16 v0, p3

    if-lt v0, v13, :cond_c

    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p3

    if-le v0, v13, :cond_d

    .line 1439
    :cond_c
    const-string v13, "HtmlComposerView"

    const-string v14, "User taps outside of an image rect. We will release the selection"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 1441
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->invalidate()V

    .line 1442
    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    goto :goto_2

    .line 1444
    :cond_d
    iget v13, v9, Landroid/graphics/Rect;->left:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_9

    iget v13, v9, Landroid/graphics/Rect;->right:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_9

    if-nez v10, :cond_9

    .line 1446
    const-string v13, "HtmlComposerView"

    const-string v14, "User tries to move an image. But, after all the image doesn\'t move."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v11

    .line 1448
    .local v11, selectedImageRect:Landroid/graphics/Rect;
    iget v13, v11, Landroid/graphics/Rect;->left:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_9

    iget v13, v11, Landroid/graphics/Rect;->right:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_9

    .line 1449
    invoke-virtual {p0, v11}, Landroid/webkit/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 1312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public hideSingleCursorHandler()V
    .locals 1

    .prologue
    .line 2776
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 2777
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2778
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mSCHTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2779
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    .line 2780
    return-void
.end method

.method public htmlLength()I
    .locals 1

    .prologue
    .line 2783
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public initComposerState()V
    .locals 1

    .prologue
    .line 2787
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2788
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2789
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2791
    :cond_0
    return-void
.end method

.method initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 9
    .parameter "context"
    .parameter "imagetRect1"

    .prologue
    const/high16 v8, 0x4000

    .line 3867
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    .line 3868
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 3870
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    .line 3871
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    .line 3872
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->extraRegiontoCover:I

    .line 3873
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 3874
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 3875
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 3876
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 3878
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedX:I

    .line 3879
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imageSelectedY:I

    .line 3880
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 3881
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->imgHeight:F

    iget v7, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 3882
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 3883
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v4, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/webkit/HtmlComposerView;->imgWidth:F

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 3886
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lt_height:I

    .line 3887
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lt_width:I

    .line 3890
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rt_height:I

    .line 3891
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rt_width:I

    .line 3893
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lb_height:I

    .line 3894
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lb_width:I

    .line 3897
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_height:I

    .line 3898
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rb_width:I

    .line 3900
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_height:I

    .line 3901
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->tm_width:I

    .line 3903
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rm_height:I

    .line 3904
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->rm_width:I

    .line 3907
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lm_height:I

    .line 3908
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->lm_width:I

    .line 3910
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->bm_height:I

    .line 3911
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->bm_width:I

    .line 3913
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 3915
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    .line 3917
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 3918
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 3919
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 3920
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 3921
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 3922
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 3923
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 3925
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 3926
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 3927
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 3928
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 3930
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->updateRegions()V

    .line 3932
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 3933
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mTouchSlop:I

    .line 3934
    return-void
.end method

.method public insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V
    .locals 4
    .parameter "contentFragment"
    .parameter "pos"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2794
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v0

    .line 2796
    .local v0, selectionType:I
    sget-object v1, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v1, :cond_1

    .line 2797
    const-string v1, "MoveToBeginningOfDocument"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    :cond_0
    :goto_0
    const-string v1, "InsertHTML"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    if-ne v3, v0, :cond_2

    .line 2806
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 2810
    :goto_1
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 2811
    return-void

    .line 2799
    :cond_1
    sget-object v1, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v1, :cond_0

    .line 2800
    const-string v1, "MoveToEndOfDocument"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2808
    :cond_2
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_1
.end method

.method public insertImage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 2851
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2852
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2853
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v1, "InsertHTML"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2859
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2860
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2863
    const-string v1, "image inserted"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2864
    const v1, 0x102040a

    sput v1, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 2865
    return-void
.end method

.method public insertImage(Ljava/lang/String;II)V
    .locals 3
    .parameter "url"
    .parameter "widthInPixel"
    .parameter "heightInPixel"

    .prologue
    .line 2814
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 2815
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2816
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v1, "InsertHTML"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2822
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2825
    const-string v1, "image inserted"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2826
    const v1, 0x102040a

    sput v1, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 2827
    return-void
.end method

.method public insertImage(Ljava/lang/String;IIZ)V
    .locals 2
    .parameter "url"
    .parameter "widthInPixel"
    .parameter "heightInPixel"
    .parameter "bEditing"

    .prologue
    .line 2839
    const/4 v0, 0x1

    if-ne v0, p4, :cond_0

    .line 2840
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffsetImage()V

    .line 2841
    const-string v0, "Delete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->clearCache(Z)V

    .line 2843
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    .line 2847
    :goto_0
    return-void

    .line 2845
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public insertImage(Ljava/lang/String;Z)V
    .locals 2
    .parameter "url"
    .parameter "bEditing"

    .prologue
    .line 2875
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 2876
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffsetImage()V

    .line 2877
    const-string v0, "Delete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->clearCache(Z)V

    .line 2879
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    .line 2883
    :goto_0
    return-void

    .line 2881
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertOrderedList()V
    .locals 2

    .prologue
    .line 1667
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1668
    const-string v0, "InsertOrderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1670
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1671
    return-void
.end method

.method public insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkit/HtmlComposerView$SelectionOffset;
    .locals 5
    .parameter "content"
    .parameter "newCursorPosition"
    .parameter "composing"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/webkit/HtmlComposerView$SelectionOffset;"
        }
    .end annotation

    .prologue
    .local p4, spanData:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;>;"
    const/4 v3, -0x1

    .line 2888
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Landroid/webkit/HtmlComposerView$SelectionOffset;

    invoke-direct {v2, p0, v3, v3}, Landroid/webkit/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkit/HtmlComposerView;II)V

    .line 2909
    :goto_0
    return-object v2

    .line 2890
    :cond_1
    new-instance v1, Landroid/webkit/WebViewCore$EditableParams;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkit/WebViewCore$EditableParams;-><init>(Landroid/webkit/WebViewCore;)V

    .line 2891
    .local v1, editableParams:Landroid/webkit/WebViewCore$EditableParams;
    iput-object p1, v1, Landroid/webkit/WebViewCore$EditableParams;->content:Ljava/lang/String;

    .line 2892
    iput p2, v1, Landroid/webkit/WebViewCore$EditableParams;->newCursorPosition:I

    .line 2893
    iput-boolean p3, v1, Landroid/webkit/WebViewCore$EditableParams;->composing:Z

    .line 2894
    iput-object p4, v1, Landroid/webkit/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    .line 2896
    monitor-enter v1

    .line 2897
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2898
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x218

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2903
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2907
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2909
    new-instance v2, Landroid/webkit/HtmlComposerView$SelectionOffset;

    iget v3, v1, Landroid/webkit/WebViewCore$EditableParams;->startOffset:I

    iget v4, v1, Landroid/webkit/WebViewCore$EditableParams;->endOffset:I

    invoke-direct {v2, p0, v3, v4}, Landroid/webkit/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkit/HtmlComposerView;II)V

    goto :goto_0

    .line 2900
    :cond_2
    :try_start_3
    new-instance v2, Landroid/webkit/HtmlComposerView$SelectionOffset;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, p0, v3, v4}, Landroid/webkit/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkit/HtmlComposerView;II)V

    monitor-exit v1

    goto :goto_0

    .line 2907
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2904
    :catch_0
    move-exception v0

    .line 2905
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public insertUnorderedList()V
    .locals 2

    .prologue
    .line 1674
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1675
    const-string v0, "InsertUnorderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1677
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1678
    return-void
.end method

.method public invokeTexttoSpeech(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 2914
    const/4 v1, 0x0

    .local v1, beforeStr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2916
    .local v0, aftStr:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "HtmlComposerView"

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    :cond_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 2920
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 2923
    :cond_2
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 2925
    :cond_3
    const-string v2, ""

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2928
    :cond_4
    const v2, 0x1020022

    if-ne p1, v2, :cond_a

    .line 2930
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2932
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2942
    :goto_0
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 2943
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "paste operations "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    :cond_5
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 2982
    :cond_6
    :goto_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2, v0}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 2983
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 2984
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->textToSpeech(II)V

    .line 2985
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 2986
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 2987
    const/4 v2, 0x0

    sput v2, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 2988
    :cond_7
    :goto_2
    return-void

    .line 2936
    :cond_8
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2937
    const-string v0, "Images inserted"

    goto :goto_0

    .line 2939
    :cond_9
    const-string v0, "Images"

    goto :goto_0

    .line 2948
    :cond_a
    const v2, 0x1020020

    if-ne p1, v2, :cond_b

    .line 2950
    const-string v0, ""

    .line 2951
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    goto :goto_1

    .line 2953
    :cond_b
    const v2, 0x1020408

    if-ne p1, v2, :cond_c

    .line 2955
    const-string v0, ""

    .line 2956
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 2958
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 2961
    :cond_c
    const v2, 0x102040a

    if-ne p1, v2, :cond_d

    .line 2963
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2964
    const-string v1, ""

    goto :goto_1

    .line 2966
    :cond_d
    const/16 v2, 0xf

    if-ne p1, v2, :cond_7

    .line 2969
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2971
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 2972
    const-string v2, "HtmlComposerView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    :cond_e
    const-string v1, ""

    goto :goto_1
.end method

.method public isBodyEmpty()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2990
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3008
    :cond_0
    :goto_0
    return v3

    .line 2992
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2993
    .local v0, bodyEmpty:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2994
    .local v2, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 2995
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2996
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x212

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3001
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3006
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3008
    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 2998
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 3006
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3002
    :catch_0
    move-exception v1

    .line 3003
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public isComposerImageTouched()Z
    .locals 1

    .prologue
    .line 5237
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    return v0
.end method

.method public isInActionMove()Z
    .locals 1

    .prologue
    .line 2524
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 3016
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3017
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMagnifierVisible()Z
    .locals 1

    .prologue
    .line 3021
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eqz v0, :cond_0

    .line 3022
    const/4 v0, 0x1

    .line 3024
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibleCursorHandler(I)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1562
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisibleCursorHandler : event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    packed-switch p1, :pswitch_data_0

    .line 1610
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1566
    :pswitch_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->show()V

    .line 1568
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1572
    :pswitch_2
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    .line 1574
    :pswitch_3
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 1576
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 1577
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1581
    :pswitch_4
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 1582
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    .line 1583
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 1584
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1587
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    if-ne v0, v3, :cond_2

    .line 1588
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mSCHMoveFlag:Z

    goto :goto_0

    .line 1590
    :cond_2
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->createToolTip()V

    goto :goto_0

    .line 1596
    :pswitch_5
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_3

    .line 1597
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->createToolTip()V

    goto :goto_0

    .line 1601
    :cond_3
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1602
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mToolTipMenu:Landroid/webkit/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView$ActionPopupWindow;->show()V

    .line 1603
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 1564
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public isVisibleCursorhandlerListener(Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;)V
    .locals 0
    .parameter "mCursorHandlerListener"

    .prologue
    .line 2545
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    .line 2546
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 3028
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public loadHtmlFile(Ljava/lang/String;)V
    .locals 2
    .parameter "htmlFilePath"

    .prologue
    .line 3032
    invoke-direct {p0, p1}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3034
    .local v0, data:Ljava/lang/String;
    const-string v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    return-void
.end method

.method public moveCursorBegining()V
    .locals 2

    .prologue
    .line 3038
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3039
    const-string v0, "MoveToBeginningOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3040
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3041
    return-void
.end method

.method public moveCursorEnd()V
    .locals 2

    .prologue
    .line 3044
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3045
    const-string v0, "MoveToEndOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3047
    return-void
.end method

.method public moveCursorSelectionToBeginningOfDocument()V
    .locals 2

    .prologue
    .line 3054
    const-string v0, "MoveToBeginningOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3055
    return-void
.end method

.method public moveCursorSelectionToBeginningOfLine()V
    .locals 2

    .prologue
    .line 3058
    const-string v0, "MoveToBeginningOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3059
    return-void
.end method

.method public moveCursorSelectionToEndOfDocument()V
    .locals 2

    .prologue
    .line 3062
    const-string v0, "MoveToEndOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3063
    return-void
.end method

.method public moveCursorSelectionToEndOfLine()V
    .locals 2

    .prologue
    .line 3066
    const-string v0, "MoveToRightEndOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    return-void
.end method

.method public moveCursorSelectionToPageDown()V
    .locals 2

    .prologue
    .line 3094
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3095
    const-string v0, "MovePageDownAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3096
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3097
    return-void
.end method

.method public moveCursorSelectionToPageUp()V
    .locals 2

    .prologue
    .line 3100
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3101
    const-string v0, "MovePageUpAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3103
    return-void
.end method

.method public moveCursorToBeginningOfLine()V
    .locals 2

    .prologue
    .line 3070
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3071
    const-string v0, "MoveToBeginningOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3072
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3073
    return-void
.end method

.method public moveCursorToEndOfLine()V
    .locals 2

    .prologue
    .line 3076
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3077
    const-string v0, "MoveToEndOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3079
    return-void
.end method

.method public moveCursorToPageDown()V
    .locals 2

    .prologue
    .line 3082
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3083
    const-string v0, "MovePageDown"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3084
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3085
    return-void
.end method

.method public moveCursorToPageUp()V
    .locals 2

    .prologue
    .line 3088
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3089
    const-string v0, "MovePageUp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3090
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3091
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 439
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 440
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 442
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    if-nez v1, :cond_0

    .line 443
    new-instance v1, Landroid/webkit/HtmlComposerView$StylusEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkit/HtmlComposerView$StylusEventListener;-><init>(Landroid/webkit/HtmlComposerView;Landroid/webkit/HtmlComposerView$1;)V

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    .line 444
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewTreeObserver;->addOnStylusButtonEventListener(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    .line 448
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 449
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 941
    const/4 v0, 0x1

    return v0
.end method

.method public onContextMenuItem(I)Z
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 487
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 489
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    if-ne v5, v3, :cond_0

    .line 490
    const-string v3, "HtmlComposerView"

    const-string v6, "onContextMenuItem To hide Cursor handler"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 494
    :cond_0
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 496
    sparse-switch p1, :sswitch_data_0

    .line 632
    :cond_1
    :goto_0
    return v4

    .line 500
    :sswitch_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 501
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->selectAllSec()Z

    .line 503
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v3, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 504
    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    iput v3, v6, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 505
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 506
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 507
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 509
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 510
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    move v4, v5

    .line 511
    goto :goto_0

    :cond_2
    move v3, v4

    .line 504
    goto :goto_1

    .line 515
    :sswitch_1
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 516
    .local v0, cursurRect:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 518
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/webkit/WebViewClassic;->setTextSelecitonManualAtContentPoint(II)Z

    .line 519
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 521
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    move v4, v5

    .line 522
    goto :goto_0

    .line 525
    .end local v0           #cursurRect:Landroid/graphics/Rect;
    :sswitch_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 526
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 527
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 528
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 529
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 530
    const v3, 0x1020020

    sput v3, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 531
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 533
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v3, :cond_3

    .line 535
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 537
    const-string v3, " image "

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 538
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 539
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iput-object v8, v3, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    :cond_3
    move v4, v5

    .line 541
    goto/16 :goto_0

    .line 544
    :sswitch_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 546
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->selectAllSec()Z

    .line 547
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 548
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 549
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 550
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 551
    const v3, 0x1020408

    sput v3, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 553
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v3, :cond_4

    .line 555
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 557
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 558
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iput-object v8, v3, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 559
    const-string v3, " images "

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    :cond_4
    move v4, v5

    .line 562
    goto/16 :goto_0

    .line 565
    :sswitch_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 566
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->setCursorFromRangeSelection()V

    .line 567
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 568
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    move v4, v5

    .line 569
    goto/16 :goto_0

    .line 574
    :sswitch_5
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->selectAllSec()Z

    .line 576
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 577
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->setCursorFromRangeSelection()V

    move v4, v5

    .line 579
    goto/16 :goto_0

    .line 582
    :sswitch_6
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebClipboard;->getHTMLForCheckingSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 584
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v8, 0x104073f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    const v8, 0x1040740

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 585
    goto/16 :goto_0

    .line 587
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 589
    const-string v3, ""

    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 592
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v2

    .line 594
    .local v2, selectionType:I
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->paste()V

    .line 596
    if-ne v5, v2, :cond_7

    .line 597
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 601
    :goto_2
    const v3, 0x1020022

    sput v3, Landroid/webkit/HtmlComposerView;->operSel:I

    move v4, v5

    .line 602
    goto/16 :goto_0

    .line 599
    :cond_7
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_2

    .line 610
    .end local v2           #selectionType:I
    :sswitch_7
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v3, v4}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 611
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebClipboard;->launchClipboardUI()V

    move v4, v5

    .line 612
    goto/16 :goto_0

    .line 615
    :sswitch_8
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 616
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->undo()V

    .line 617
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v4, v5

    .line 618
    goto/16 :goto_0

    .line 621
    :sswitch_9
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->redo()V

    .line 622
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v4, v5

    .line 623
    goto/16 :goto_0

    .line 626
    :sswitch_a
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 627
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_8

    .line 628
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_8
    move v4, v5

    .line 630
    goto/16 :goto_0

    .line 496
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_9
        0x2711 -> :sswitch_8
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_4
        0x1020022 -> :sswitch_6
        0x1020024 -> :sswitch_a
        0x1020028 -> :sswitch_1
        0x1020408 -> :sswitch_3
        0x1020409 -> :sswitch_5
        0x102040a -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5
    .parameter "outAttrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 946
    const-string v1, "HtmlComposerView"

    const-string v2, "onCreateInputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    if-ne v4, v1, :cond_0

    .line 949
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 950
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "allowEmoji"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 951
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 954
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    if-nez v1, :cond_1

    .line 955
    const-string v1, "HtmlComposerView"

    const-string v2, "calling set Caret 0 0 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-virtual {p0, v3, v3}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 960
    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x4000

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 967
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 968
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 970
    iget v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 971
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 973
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->sendEventToUpdateToolbar()V

    .line 975
    const-string v1, "HtmlComposerView"

    const-string v2, "onCreateInputConnection End"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 453
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 454
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 456
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    .line 458
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->mStylusEventListener:Landroid/webkit/HtmlComposerView$StylusEventListener;

    .line 462
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 463
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 983
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget v0, v0, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 984
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlComposerView  --- Ondraw  -clearSelection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 986
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    .line 988
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 989
    return-void
.end method

.method public onEditorAction(I)V
    .locals 3
    .parameter "actionCode"

    .prologue
    const/16 v2, 0x82

    .line 3111
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 3112
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 3113
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3114
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3115
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3122
    .end local v0           #v:Landroid/view/View;
    :cond_0
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 3123
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 994
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 996
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 997
    if-nez p1, :cond_3

    .line 998
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 1000
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    if-ne v4, v0, :cond_0

    .line 1001
    const-string v0, "HtmlComposerView"

    const-string v1, "onFocusChanged To hide Cursor handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 1003
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->bSCHvisibleonFocus:Z

    .line 1006
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 1008
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->dismissClipboardUI()V

    .line 1010
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1028
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1029
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1031
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v4, v0, :cond_2

    .line 1032
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 1033
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->clearActionModes()V

    .line 1035
    :cond_2
    return-void

    .line 1012
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 1013
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->updateClipboardUI()V

    .line 1015
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    if-eqz v0, :cond_4

    .line 1016
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 1020
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    const-string v0, "HtmlComposerView"

    const-string v1, "onFocus calling invokeTexttoSpeech()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1040
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 1042
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 1043
    const-string v3, "HtmlComposerView"

    const-string v4, "onHoverEvent ACTION_HOVER_ENTER"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 1046
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1047
    .local v0, contentX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1049
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->isHoverPointWithinIconAreaForResizing(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1050
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtmlComposerView"

    const-string v4, "onHoverEvent false == isHoverPointWithinIconAreaForResizing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    .end local v0           #contentX:I
    .end local v1           #contentY:I
    :cond_0
    :goto_0
    return v2

    .line 1053
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 1054
    const-string v2, "HtmlComposerView"

    const-string v3, "onHoverEvent ACTION_HOVER_EXIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 1056
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mRHIResource:I

    .line 1057
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mXCenter:I

    .line 1058
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mYCenter:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1059
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 1060
    const-string v3, "HtmlComposerView"

    const-string v4, "onHoverEvent ACTION_HOVER_MOVE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1063
    .restart local v0       #contentX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1065
    .restart local v1       #contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->isHoverPointWithinIconAreaForResizing(II)Z

    move-result v3

    if-ne v2, v3, :cond_5

    .line 1066
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "HtmlComposerView"

    const-string v3, "onHoverEvent true == isHoverPointWithinIconAreaForResizing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow;->show(I)V

    goto :goto_1

    .line 1074
    .end local v0           #contentX:I
    .end local v1           #contentY:I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1070
    .restart local v0       #contentX:I
    .restart local v1       #contentY:I
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow;->dismiss()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 895
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 897
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 898
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 899
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 901
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitializeAccessibilityEvent mAdd = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mRemove = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    if-nez v0, :cond_2

    .line 917
    :cond_1
    :goto_0
    return-void

    .line 906
    :cond_2
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    if-nez v0, :cond_4

    .line 908
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitializeAccessibilityEvent getTTSbeforeText() 1 ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_3
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 910
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    goto :goto_0

    .line 912
    :cond_4
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    if-eqz v0, :cond_1

    .line 914
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitializeAccessibilityEvent getTTSbeforeText() 2 ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_5
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 1095
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1096
    const-string v5, "HtmlComposerView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "htmlcompor onKeyDown "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_0
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v4, v5, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1106
    iput-boolean v8, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1112
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1119
    const/16 v5, 0x37

    if-eq p1, v5, :cond_2

    const/16 v5, 0x3e

    if-ne p1, v5, :cond_3

    :cond_2
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView;->mAltKeyIsPressed:Z

    if-ne v5, v4, :cond_3

    .line 1122
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 1125
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 1148
    :goto_0
    iput v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1149
    iput v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1151
    const/4 v1, 0x0

    .line 1153
    .local v1, prevSpanTextBeforeStartOffset:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    const/16 v6, 0xf

    invoke-virtual {v5, v6, v8}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1155
    .local v3, spannableString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1157
    .local v2, spannableChar:[C
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1159
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v8, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1160
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    iput v5, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 1161
    iget v5, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1162
    iget v5, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1164
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    if-ltz v5, :cond_4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-ltz v5, :cond_4

    .line 1166
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v5, v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1169
    :cond_4
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-lt v5, v4, :cond_5

    .line 1171
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v5, v6, v7}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1174
    :cond_5
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, p0, v6, p1, p2}, Landroid/text/method/QwertyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1176
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    iget v6, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    sub-int v0, v5, v6

    .line 1178
    .local v0, diff:I
    if-eqz v0, :cond_6

    .line 1179
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1181
    :cond_6
    if-lez v0, :cond_b

    .line 1183
    if-eqz v1, :cond_a

    .line 1185
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v5, v6, v7}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_9

    .line 1187
    const-string v5, ""

    invoke-virtual {p0, v5, v4}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1188
    const-string v5, "InsertText"

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1203
    :goto_1
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v5, v0

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1204
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1213
    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 1214
    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 1220
    .end local v0           #diff:I
    .end local v1           #prevSpanTextBeforeStartOffset:Ljava/lang/String;
    .end local v2           #spannableChar:[C
    .end local v3           #spannableString:Ljava/lang/String;
    :cond_8
    :goto_3
    :sswitch_0
    return v4

    .line 1128
    :sswitch_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebClipboard;->launchClipboardUI()V

    goto :goto_3

    .line 1133
    :sswitch_2
    iput-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    goto/16 :goto_0

    .line 1137
    :sswitch_3
    const-string v5, "DeleteForward"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_0

    .line 1142
    :sswitch_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_3

    .line 1193
    .restart local v0       #diff:I
    .restart local v1       #prevSpanTextBeforeStartOffset:Ljava/lang/String;
    .restart local v2       #spannableChar:[C
    .restart local v3       #spannableString:Ljava/lang/String;
    :cond_9
    const-string v5, "InsertText"

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_1

    .line 1199
    :cond_a
    const-string v5, "InsertText"

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_1

    .line 1205
    :cond_b
    if-gez v0, :cond_7

    .line 1207
    const-string v5, "InsertText"

    iget-object v6, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1209
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1210
    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    goto :goto_2

    .line 1220
    .end local v0           #diff:I
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_3

    .line 1125
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x43 -> :sswitch_4
        0x70 -> :sswitch_3
        0xdd -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1085
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtmlComposerView onKeyLongPress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1089
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1225
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebClipboard;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1227
    const-string v1, "HtmlComposerView"

    const-string v2, " onKeyPreIme-dismiss Clipboard "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebClipboard;->dismissClipboardUI()V

    .line 1229
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 1232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1237
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1238
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "htmlcompor onKeyUp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1264
    :goto_0
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    if-ltz v1, :cond_1

    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-ltz v1, :cond_1

    .line 1266
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1269
    :cond_1
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    if-eqz v1, :cond_4

    .line 1271
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mQwertyInput:Landroid/text/method/QwertyKeyListener;

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p0, v2, p1, p2}, Landroid/text/method/QwertyKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1275
    :goto_1
    :sswitch_0
    return v0

    .line 1244
    :sswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    goto :goto_0

    .line 1247
    :sswitch_2
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_3

    .line 1248
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1250
    const-string v1, "image"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 1251
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const v1, 0x1020020

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    .line 1254
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 1255
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/webkit/WebViewClassic;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    goto :goto_0

    .line 1257
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1275
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1241
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 921
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 922
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 923
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopulateAccessibilityEvent text = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    return-void
.end method

.method public onRecieveWebViewSelectionChanged()V
    .locals 3

    .prologue
    .line 3200
    const-string v1, "HtmlComposerView"

    const-string v2, "onRecieveWebViewSelectionChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getDCHandlerLastHandleType()I

    move-result v0

    .line 3204
    .local v0, handleType:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3205
    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(I)V

    .line 3210
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->sendEventToUpdateToolbar()V

    .line 3211
    return-void

    .line 3206
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3207
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(I)V

    goto :goto_0
.end method

.method public onRecieveWebviewLongTouchUp()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 3154
    const-string v3, "HtmlComposerView"

    const-string v4, "onRecieveWebviewLongTouchUp() Has Long-pressed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-nez v3, :cond_0

    .line 3157
    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 3158
    const-string v3, "HtmlComposerView"

    const-string v4, "onRecieveWebviewLongTouchUp() this view has already lost the focus"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    :goto_0
    return-void

    .line 3163
    :cond_0
    iget-boolean v3, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-nez v3, :cond_1

    .line 3164
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3166
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 3168
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imm active  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getTargetView()Landroid/webkit/HtmlComposerView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3171
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->SendInitComposing()V

    .line 3173
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v2

    .line 3174
    .local v2, selectionType:I
    if-ne v8, v2, :cond_3

    .line 3175
    invoke-virtual {v0, p0, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3177
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 3179
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/HtmlComposerView$SelectionOffset;

    move-result-object v1

    .line 3180
    .local v1, selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v4, v1, Landroid/webkit/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v4, v3, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 3181
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v4, v1, Landroid/webkit/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v4, v3, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 3182
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v6, v3, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 3183
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v6, v3, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 3185
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 3193
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #selctionOffset:Landroid/webkit/HtmlComposerView$SelectionOffset;
    .end local v2           #selectionType:I
    :cond_1
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Web_EnableOptionEditTextDuringFullHwr"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3194
    invoke-virtual {p0, v8}, Landroid/webkit/HtmlComposerView;->sendNotificationToIME(Z)V

    .line 3196
    :cond_2
    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_0

    .line 3186
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v2       #selectionType:I
    :cond_3
    if-nez v2, :cond_1

    .line 3187
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v6, v3, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 3188
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v6, v3, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 3189
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto :goto_1
.end method

.method public onRecieveWebviewShortTouchUp()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 3126
    const-string v1, "HtmlComposerView"

    const-string v2, "onRecieveWebviewShortTouchUp() Has Short-pressed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-nez v1, :cond_0

    .line 3129
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 3130
    const-string v1, "HtmlComposerView"

    const-string v2, "onRecieveWebviewShortTouchUp() this view has already lost the focus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    :goto_0
    return-void

    .line 3134
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-nez v1, :cond_1

    .line 3135
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3137
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 3139
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imm active  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->getTargetView()Landroid/webkit/HtmlComposerView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3142
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3143
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->SendInitComposing()V

    .line 3145
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v5, v1, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 3146
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v5, v1, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 3147
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 3150
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    .line 1280
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 1281
    .local v7, ret:Z
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContentX()I

    move-result v2

    .line 1282
    .local v2, contentX:I
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContentY()I

    move-result v3

    .line 1283
    .local v3, contentY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v4, v0

    .line 1284
    .local v4, rawX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v5, v0

    .line 1285
    .local v5, rawY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1287
    .local v1, action:I
    const-string v0, "HtmlComposerView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MotionEvent.ACTION_DOWN  html compopser "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 1290
    const/4 v6, 0x0

    .line 1292
    .local v6, imageHandlerHeight:I
    sget-object v0, Landroid/webkit/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1294
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isImageSelected:Z

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 1298
    :cond_0
    add-int v0, v5, v6

    sget-object v8, Landroid/webkit/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-le v0, v8, :cond_2

    .line 1299
    sget-object v0, Landroid/webkit/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v0, v6

    .end local v6           #imageHandlerHeight:I
    :cond_1
    :goto_0
    move-object v0, p0

    .line 1305
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HtmlComposerView;->handle_onTouchEvent(IIIII)Z

    .line 1307
    return v7

    .line 1300
    .restart local v6       #imageHandlerHeight:I
    :cond_2
    iget v0, p0, Landroid/webkit/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v0, v6

    sub-int v0, v5, v0

    sget-object v8, Landroid/webkit/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v0, v8, :cond_1

    .line 1301
    sget-object v0, Landroid/webkit/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int v5, v0, v6

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8
    .parameter "hasWindowFocus"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1464
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWindowFocusChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 1466
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1467
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 1469
    invoke-virtual {p0, v6}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1470
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1472
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v2, v3}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 1473
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->updateClipboardUI()V

    .line 1476
    :cond_0
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-nez v2, :cond_1

    .line 1478
    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1480
    :cond_1
    if-nez p1, :cond_5

    .line 1482
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->bShowSingleCursorHandler:Z

    if-ne v6, v2, :cond_2

    .line 1483
    const-string v2, "HtmlComposerView"

    const-string v3, "onWindowFocusChanged To hide Cursor handler"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 1485
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->bSCHvisibleonFocus:Z

    .line 1488
    :cond_2
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v6, v2, :cond_3

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_4

    .line 1490
    :cond_3
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iput v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 1491
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 1493
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWindowFocusChanged WindowFocus = false, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_4
    :goto_0
    return-void

    .line 1499
    :cond_5
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v6, v2, :cond_6

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_b

    .line 1501
    :cond_6
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWindowFocusChanged WindowFocus = true, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_7
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWindowFocusChanged spanComposerText count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurSelStart= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurSelEnd= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget v3, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    sub-int v0, v2, v3

    .line 1507
    .local v0, diff:I
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1516
    if-lez v0, :cond_d

    .line 1518
    const-string v2, "InsertText"

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1533
    :cond_8
    :goto_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 1535
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1536
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1538
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-ne v6, v2, :cond_9

    .line 1539
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 1540
    :cond_9
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_a

    .line 1541
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1543
    :cond_a
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 1546
    .end local v0           #diff:I
    :cond_b
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v6, v2, :cond_c

    .line 1547
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 1550
    :cond_c
    sget v2, Landroid/webkit/HtmlComposerView;->operSel:I

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1551
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1552
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x500

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1555
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->myHandler:Landroid/webkit/HtmlComposerView$HCWHandler;

    invoke-virtual {v2, v1}, Landroid/webkit/HtmlComposerView$HCWHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1520
    .end local v1           #msg:Landroid/os/Message;
    .restart local v0       #diff:I
    :cond_d
    if-nez v0, :cond_e

    .line 1521
    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-lez v2, :cond_8

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8

    .line 1524
    const-string v2, ""

    invoke-virtual {p0, v2, v6}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1525
    const-string v2, "InsertText"

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_1

    .line 1528
    :cond_e
    const/4 v2, -0x1

    if-ne v0, v2, :cond_8

    .line 1529
    const-string v2, ""

    invoke-virtual {p0, v2, v6}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1530
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_1
.end method

.method public outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "context"
    .parameter "imagetRect"

    .prologue
    const/4 v5, 0x1

    .line 3938
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearImageSelection()V

    .line 3939
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 3940
    invoke-virtual {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 3941
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 3942
    .local v0, re:Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3944
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 3945
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after init outline Rect path : left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 3949
    .local v1, reh:Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3951
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 3952
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after init outline Rect path : left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    :cond_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-direct {p0, p2, v2, v3}, Landroid/webkit/HtmlComposerView;->getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 3956
    return-void
.end method

.method public paste()V
    .locals 2

    .prologue
    .line 1681
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 1682
    const-string v0, "Paste"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    return-void
.end method

.method public redo()V
    .locals 2

    .prologue
    .line 1686
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1687
    const-string v0, "Redo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1689
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1690
    return-void
.end method

.method public registerNotificationListener(Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1693
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 1694
    return-void
.end method

.method public removeNotificationListener()V
    .locals 1

    .prologue
    .line 1697
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 1698
    return-void
.end method

.method public restoreSelection()V
    .locals 2

    .prologue
    .line 3214
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3220
    :cond_0
    :goto_0
    return-void

    .line 3216
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3217
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x214

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3218
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    goto :goto_0
.end method

.method public saveSelection()V
    .locals 2

    .prologue
    .line 3223
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3227
    :cond_0
    :goto_0
    return-void

    .line 3225
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3226
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x215

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 1701
    const-string v0, "SelectAll"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    return-void
.end method

.method public selectBWStartAndEnd(IIII)V
    .locals 4
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"

    .prologue
    .line 3802
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3810
    :cond_0
    :goto_0
    return-void

    .line 3804
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectBWStartAndEnd start = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], startY = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], endX = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], endY = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3806
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3808
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3809
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v1

    const/16 v2, 0x22a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public selectedType()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 3230
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3249
    :cond_0
    :goto_0
    return v3

    .line 3232
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3234
    .local v2, selectedType:Ljava/lang/Integer;
    new-instance v1, Landroid/webkit/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4, v2}, Landroid/webkit/HtmlComposerView$ResultTransport;-><init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3235
    .local v1, res:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 3236
    :try_start_0
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3237
    iget-object v3, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x213

    invoke-virtual {v3, v4, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3242
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3247
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3249
    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 3239
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3247
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3243
    :catch_0
    move-exception v0

    .line 3244
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 935
    invoke-super {p0, p1}, Landroid/webkit/WebView;->sendAccessibilityEvent(I)V

    .line 936
    return-void
.end method

.method public sendNotificationToIME(Z)V
    .locals 3
    .parameter "enableTouch"

    .prologue
    .line 290
    if-eqz p1, :cond_1

    const-string v0, "com.samsung.inputmethod/cmd_show_cursorcontrol"

    .line 292
    .local v0, command:Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 293
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 298
    :cond_0
    return-void

    .line 290
    .end local v0           #command:Ljava/lang/String;
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const-string v0, "com.samsung.inputmethod/cmd_hide_cursorcontrol"

    goto :goto_0
.end method

.method public setAutoTextSelection(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2532
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->setAutoTextSelection(Z)V

    .line 2533
    return-void
.end method

.method public setCaretForEdit(Z)V
    .locals 4
    .parameter "active"

    .prologue
    const/16 v1, 0x8e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3253
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3266
    :cond_0
    :goto_0
    return-void

    .line 3255
    :cond_1
    if-eqz p1, :cond_2

    .line 3256
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3257
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0

    .line 3260
    :cond_2
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 3261
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3262
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3263
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x20b

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public setComposingRegion(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 3269
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3288
    :cond_0
    :goto_0
    return-void

    .line 3270
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 3272
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 3273
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 3275
    .local v1, sendTwoIntObj:Landroid/graphics/Point;
    monitor-enter v1

    .line 3276
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3277
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21b

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3282
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3287
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3279
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3283
    :catch_0
    move-exception v0

    .line 3284
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized setComposingState(Z)V
    .locals 1
    .parameter "isInComposingState"

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 317
    :goto_0
    monitor-exit p0

    return-void

    .line 314
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCursorFromRangeSelection()V
    .locals 2

    .prologue
    .line 3295
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3299
    :cond_0
    :goto_0
    return-void

    .line 3297
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3298
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x22b

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public setDefaultFontSize(I)V
    .locals 3
    .parameter "defaultFontSize"

    .prologue
    .line 3302
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 3303
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    int-to-float v1, p1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 3307
    :goto_0
    return-void

    .line 3305
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    goto :goto_0
.end method

.method public setEditableSelection(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 3310
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3329
    :cond_0
    :goto_0
    return-void

    .line 3311
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 3313
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isSelectionset:Z

    .line 3314
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 3316
    .local v1, sendTwoIntObj:Landroid/graphics/Point;
    monitor-enter v1

    .line 3317
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3318
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x1fe

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3323
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3328
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3320
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3324
    :catch_0
    move-exception v0

    .line 3325
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setEmoji(Z)V
    .locals 3
    .parameter "bIsActive"

    .prologue
    .line 3333
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " htmlcomposer setEmoji() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 3335
    return-void
.end method

.method public setImeOptions(I)V
    .locals 0
    .parameter "imeOption"

    .prologue
    .line 3338
    iput p1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 3339
    return-void
.end method

.method protected setInputConnection(Landroid/webkit/HtmlComposerInputConnection;)V
    .locals 0
    .parameter "ic"

    .prologue
    .line 429
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 430
    return-void
.end method

.method public setLastKeyPadState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 4701
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 4702
    return-void
.end method

.method public setMaxHtmlLength(I)V
    .locals 1
    .parameter "maxHtmlLength"

    .prologue
    .line 3372
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 3373
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 3374
    return-void
.end method

.method public setOnInsertedImageHitListener(Landroid/webkit/HtmlComposerView$InsertedImageHitListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1711
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkit/HtmlComposerView$InsertedImageHitListener;

    .line 1712
    return-void
.end method

.method public setOnRichTextFormatChangedListener(Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1706
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;

    .line 1707
    return-void
.end method

.method public setPageZoom(F)V
    .locals 3
    .parameter "factor"

    .prologue
    .line 3348
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3349
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPageZoom factor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    :cond_0
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mZoomFactor:F

    .line 3353
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3354
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebClipboard;->setZoomFactorForPasting(F)V

    .line 3355
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v1

    iget v0, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    if-gt v0, v2, :cond_3

    iget v0, p0, Landroid/webkit/HtmlComposerView;->mScreenWidth:I

    :goto_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/webkit/WebClipboard;->setWidthForCopiedImage(I)V

    .line 3358
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3359
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x228

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3360
    :cond_2
    return-void

    .line 3355
    :cond_3
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mScreenHeight:I

    goto :goto_0
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 3363
    iput-object p1, p0, Landroid/webkit/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 3364
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 3367
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clear()V

    .line 3368
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 3369
    return-void
.end method

.method public singleCursorHandlerTouchEvent(Landroid/view/MotionEvent;IIIFF)Z
    .locals 26
    .parameter "ev"
    .parameter "touchEvent"
    .parameter "contentX"
    .parameter "contentY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5033
    const/16 v13, 0xc

    .line 5039
    .local v13, left_right_image_gap:I
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5040
    .local v14, metric:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    check-cast v23, Landroid/app/Activity;

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5042
    iget v0, v14, Landroid/util/DisplayMetrics;->density:F

    move/from16 v23, v0

    const/high16 v24, 0x42c8

    mul-float v23, v23, v24

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v8, v23, v24

    .line 5044
    .local v8, density:F
    const-string v23, "HtmlComposerView"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "drawSingleCursorHandler density = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5046
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v7

    .line 5047
    .local v7, cursurRect:Landroid/graphics/Rect;
    if-nez v7, :cond_0

    const/16 v23, 0x0

    .line 5147
    :goto_0
    return v23

    .line 5049
    :cond_0
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    .line 5050
    .local v19, xCursorPosition:I
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    .line 5052
    .local v22, yCursorPosition:I
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 5053
    .local v16, visRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewClassic;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 5055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x10809b6

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 5056
    .local v15, singleCursorhandler:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 5057
    .local v9, iSCHHeight:I
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 5058
    .local v11, iSCHWidth:I
    int-to-float v0, v9

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v10, v0

    .line 5059
    .local v10, iSCHHeightByDensity:I
    int-to-float v0, v11

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v12, v0

    .line 5061
    .local v12, iSCHWidthByDensity:I
    div-int/lit8 v2, v12, 0x2

    .line 5062
    .local v2, TOUCH_X_LEFT:I
    div-int/lit8 v3, v12, 0x2

    .line 5063
    .local v3, TOUCH_X_RIGHT:I
    const/4 v5, 0x0

    .line 5064
    .local v5, TOUCH_Y_TOP:I
    move v4, v10

    .line 5066
    .local v4, TOUCH_Y_BOTTOM:I
    sub-int v17, v19, v2

    .line 5067
    .local v17, x1:I
    add-int v18, v19, v3

    .line 5068
    .local v18, x2:I
    add-int/lit8 v20, v22, 0x0

    .line 5069
    .local v20, y1:I
    add-int v21, v22, v4

    .line 5071
    .local v21, y2:I
    const/4 v6, 0x0

    .line 5073
    .local v6, bIsReverse:Z
    add-int v23, v22, v9

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v23, v23, v22

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 5076
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 5077
    sub-int v20, v22, v4

    .line 5078
    add-int/lit8 v21, v22, 0x0

    .line 5080
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 5081
    sub-int v17, v19, v2

    .line 5082
    add-int v18, v19, v3

    .line 5096
    :goto_1
    const/4 v6, 0x1

    .line 5114
    :cond_1
    :goto_2
    packed-switch p2, :pswitch_data_0

    .line 5147
    :cond_2
    :goto_3
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 5084
    :cond_3
    div-int/lit8 v23, v11, 0x2

    sub-int v23, v19, v23

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 5085
    sub-int v17, v19, v13

    .line 5086
    sub-int v23, v19, v13

    add-int v18, v23, v12

    goto :goto_1

    .line 5087
    :cond_4
    div-int/lit8 v23, v11, 0x2

    add-int v23, v23, v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_5

    .line 5088
    add-int v23, v19, v13

    sub-int v17, v23, v12

    .line 5089
    add-int v18, v19, v13

    goto :goto_1

    .line 5091
    :cond_5
    sub-int v17, v19, v2

    .line 5092
    add-int v18, v19, v3

    goto :goto_1

    .line 5097
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->isPhone:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 5098
    div-int/lit8 v23, v11, 0x2

    sub-int v23, v19, v23

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 5099
    sub-int v17, v19, v13

    .line 5100
    sub-int v23, v19, v13

    add-int v18, v23, v12

    goto :goto_2

    .line 5101
    :cond_7
    div-int/lit8 v23, v11, 0x2

    add-int v23, v23, v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_8

    .line 5102
    add-int v23, v19, v13

    sub-int v17, v23, v12

    .line 5103
    add-int v18, v19, v13

    goto :goto_2

    .line 5105
    :cond_8
    sub-int v17, v19, v2

    .line 5106
    add-int v18, v19, v3

    goto :goto_2

    .line 5117
    :pswitch_0
    move/from16 v0, p3

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    move/from16 v0, p3

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    move/from16 v0, p4

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    move/from16 v0, p4

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 5119
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 5125
    :pswitch_1
    if-nez v6, :cond_9

    div-int/lit8 v23, v2, 0x2

    sub-int v23, v17, v23

    move/from16 v0, p3

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    div-int/lit8 v23, v3, 0x2

    add-int v23, v23, v18

    move/from16 v0, p3

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    move/from16 v0, p4

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    add-int v23, v21, v4

    move/from16 v0, p4

    move/from16 v1, v23

    if-lt v0, v1, :cond_a

    :cond_9
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v0, v6, :cond_b

    div-int/lit8 v23, v2, 0x2

    sub-int v23, v17, v23

    move/from16 v0, p3

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    div-int/lit8 v23, v3, 0x2

    add-int v23, v23, v18

    move/from16 v0, p3

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    sub-int v23, v20, v4

    move/from16 v0, p4

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    move/from16 v0, p4

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 5128
    :cond_a
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    .line 5129
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/webkit/WebViewClassic;->mInActionMove:Z

    .line 5130
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 5134
    :cond_b
    const-string v23, "HtmlComposerView"

    const-string v24, " @@@    singleCursorHandlerTouchEvent   NOT touched on Single Cursor image   @@@"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5140
    :pswitch_2
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerView;->mActionMoveSCH:Z

    goto/16 :goto_3

    .line 5114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public textChangedForWatcher()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4751
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 4752
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v1, ""

    invoke-interface {v0, v1, v2, v2, v2}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 4753
    :cond_0
    return-void
.end method

.method public textChangedForWatcher(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x0

    .line 4764
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 4765
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v1, ""

    invoke-interface {v0, v1, v2, p1, v2}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 4767
    :cond_0
    return-void
.end method

.method public textChangedForWatcher(Z)V
    .locals 4
    .parameter "isTextChanged"

    .prologue
    const/4 v1, 0x0

    .line 4756
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 4757
    .local v0, temp:I
    :goto_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_0

    .line 4759
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v3, ""

    invoke-interface {v2, v3, v1, v1, v0}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 4761
    :cond_0
    return-void

    .end local v0           #temp:I
    :cond_1
    move v0, v1

    .line 4756
    goto :goto_0
.end method

.method public textToSpeech(II)V
    .locals 2
    .parameter "add"
    .parameter "remove"

    .prologue
    .line 3378
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3379
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mAdd:I

    .line 3380
    iput p2, p0, Landroid/webkit/HtmlComposerView;->mRemove:I

    .line 3381
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    const-string v1, "sendAccessbilityEvent [ 16]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->sendAccessibilityEvent(I)V

    .line 3384
    :cond_1
    return-void
.end method

.method public toggleBold()V
    .locals 2

    .prologue
    .line 1716
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1722
    :goto_0
    return-void

    .line 1719
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1720
    const-string v0, "Bold"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_0
.end method

.method public toggleItalic()V
    .locals 2

    .prologue
    .line 1725
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1731
    :goto_0
    return-void

    .line 1728
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1729
    const-string v0, "Italic"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_0
.end method

.method public toggleUnderline()V
    .locals 2

    .prologue
    .line 1734
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1741
    :goto_0
    return-void

    .line 1737
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1738
    const-string v0, "Underline"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1740
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    goto :goto_0
.end method

.method public undo()V
    .locals 2

    .prologue
    .line 1744
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 1745
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1746
    const-string v0, "Undo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1748
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1749
    return-void
.end method

.method public undoRedoStateReset()V
    .locals 2

    .prologue
    .line 3388
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3392
    :cond_0
    :goto_0
    return-void

    .line 3390
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3391
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x211

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public unmarkWord(Ljava/lang/String;)V
    .locals 1
    .parameter "word"

    .prologue
    .line 2520
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->unmarkWord(Ljava/lang/String;)V

    .line 2521
    return-void
.end method

.method public updateIMSelectionToEditor(II)V
    .locals 2
    .parameter "curSelStart"
    .parameter "curSelEnd"

    .prologue
    .line 3395
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3399
    :cond_0
    :goto_0
    return-void

    .line 3397
    :cond_1
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3398
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21a

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public updateOutlineDrawRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "imagetRect"

    .prologue
    .line 3960
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 3961
    return-void
.end method
