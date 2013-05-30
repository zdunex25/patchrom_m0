.class public Landroid/webkit/WebViewCore$EventHub;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHub"
.end annotation


# static fields
.field static final ADD_JS_INTERFACE:I = 0x8a

.field static final ADD_PACKAGE_NAME:I = 0xb9

.field static final ADD_PACKAGE_NAMES:I = 0xb8

.field static final ADVANCE_TEXT_SELECTION_ALL:I = 0x2cc

.field static final AUTOFILL_FORM:I = 0xc0

.field static final CAN_REDO:I = 0x20f

.field static final CAN_UNDO:I = 0x20d

.field static final CHECK_END_OF_WORD_AT_POSITION:I = 0x224

.field static final CHECK_SELECTED_CLOSEST_WORD:I = 0x223

.field static final CHECK_SELECTION_AT_BOUNDRY:I = 0x217

.field static final CHECK_SPELLING_OF_WORD:I = 0xf1

.field static final CLEAR_CACHE:I = 0x6f

.field static final CLEAR_CONTENT:I = 0x86

.field static final CLEAR_HISTORY:I = 0x70

.field static final CLEAR_REDO_UNDO:I = 0x211

.field static final CLEAR_SSL_PREF_TABLE:I = 0x96

.field static final CLEAR_TEXT_SELECTION:I = 0x2c7

.field static final CLOSEST_WORD_SELECTION:I = 0x2c8

.field static final CONTENT_INVALIDATE_ALL:I = 0xaf

.field static final CONTENT_SELECTION_TYPE:I = 0x213

.field static final COPY_BEGIN_EXTEND_SELECTION:I = 0x2c9

.field static final COPY_MOVE_SELECTION:I = 0x2c6

.field static final COPY_SAVE_IMAGE:I = 0x204

.field static final COPY_TEXT:I = 0xd2

.field static final DELETE_SELECTION:I = 0x7a

.field static final DELETE_SURROUNDING_TEXT:I = 0x1ff

.field static final DELETE_TEXT:I = 0xd3

.field static final DELKEY_SIML_FOR_COUNT:I = 0x1fc

.field private static final DESTROY:I = 0xc8

.field static final DOC_HAS_IMAGES:I = 0x78

.field static final DRAW_SELECTION:I = 0x205

.field static final DUMP_DOMTREE:I = 0xaa

.field static final DUMP_RENDERTREE:I = 0xab

.field static final EXECUTE_JS:I = 0xc2

.field static final EXEC_COMMAND:I = 0x203

.field static final FIND_ALL:I = 0xdd

.field static final FIND_NEXT:I = 0xde

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x60

.field static final FREE_MEMORY:I = 0x91

.field static final GEOLOCATION_PERMISSIONS_PROVIDE:I = 0xb4

.field static final GET_BODY_EMPTY:I = 0x212

.field static final GET_BODY_HTML:I = 0x200

.field static final GET_BODY_PLAIN_TEXT:I = 0x202

.field static final GET_CARET_RECT:I = 0x209

.field static final GET_CURRENT_FONTSIZE:I = 0x222

.field static final GET_CURRENT_FONTVALUE:I = 0x225

.field static final GET_EMAIL_MARKUP:I = 0x206

.field static final GET_IMAGE_SIZE:I = 0x226

.field static final GET_SELECTEDIMAGE_RECT:I = 0x227

.field static final GET_SELECTED_IMAGE_URI:I = 0x229

.field static final GET_SELECTION_NONE:I = 0x20c

.field static final GET_SLECTION_OFFSET:I = 0x201

.field static final GET_SLECTION_OFFSET_IMAGE:I = 0x21d

.field static final GET_STATE_IN_RICHLY_EDITABLE:I = 0x21e

.field static final GET_TEXT_AROUND_CURSOR:I = 0x1fd

.field static final GO_BACK_FORWARD:I = 0x6a

.field static final HEARTBEAT:I = 0xc5

.field static final HIDE_FULLSCREEN:I = 0xb6

.field static final INSERT_IMAGE_CONTENT:I = 0x220

.field static final INSERT_TEXT:I = 0xd4

.field static final INSERT_TEXT_CONTENT:I = 0x218

.field static final KEY_DOWN:I = 0x67

.field static final KEY_PRESS:I = 0xdf

.field static final KEY_UP:I = 0x68

.field private static final LAST_PACKAGE_MSG_ID:I = 0x95

.field static final LISTBOX_CHOICES:I = 0x7b

.field static final LOAD_DATA:I = 0x8b

.field static final LOAD_URL:I = 0x64

.field public static final MESSAGE_RELAY:I = 0x7d

.field static final MODIFY_SELECTION:I = 0xbe

.field static final MOVE_FOCUS_NEXT:I = 0x258

.field static final MOVE_FOCUS_PREV:I = 0x259

.field public static final MOVE_SINGLE_CURSOR_HANDLER:I = 0x21c

.field static final NAVIGATION_BT_KEYBOARD:I = 0x2cd

.field static final NOTIFICATION_ID_BACK:I = 0xcd

.field static final NOTIFICATION_PERMISSIONS_PROVIDE:I = 0xcb

.field static final NOTIFICATION_RESPONSE_BACK:I = 0xcc

.field static final NOTIFY_ANIMATION_STARTED:I = 0xc4

.field static final ON_PAUSE:I = 0x8f

.field static final ON_RESUME:I = 0x90

.field static final PASS_TO_JS:I = 0x73

.field static final PAUSE_TIMERS:I = 0x6d

.field static final PLUGIN_SURFACE_READY:I = 0xc3

.field static final POPULATE_VISITED_LINKS:I = 0xb5

.field static final POST_URL:I = 0x84

.field static final PROXY_CHANGED:I = 0xc1

.field static final RELOAD:I = 0x66

.field static final REMOVE_JS_INTERFACE:I = 0x95

.field static final REMOVE_PACKAGE_NAME:I = 0xba

.field static final REPLACE_TEXT:I = 0x72

.field static final REQUEST_CURSOR_HREF:I = 0x89

.field static final REQUEST_DOC_AS_TEXT:I = 0xa1

.field static final REQUEST_EXT_REPRESENTATION:I = 0xa0

.field static final RESIZE_IMAGE:I = 0x221

.field static final RESTORE_SELECTION:I = 0x214

.field static final RESTORE_STATE:I = 0x6c

.field static final RESUME_TIMERS:I = 0x6e

.field static final REVEAL_SELECTION:I = 0x60

.field static final SAVE_DOCUMENT_STATE:I = 0x80

.field static final SAVE_SELECTION:I = 0x215

.field static final SAVE_VIEW_STATE:I = 0xe1

.field static final SAVE_WEBARCHIVE:I = 0x93

.field static final SCROLL_LAYER:I = 0xc6

.field static final SCROLL_TEXT_INPUT:I = 0x63

.field static final SELECT_ALL:I = 0xd7

.field static final SELECT_BETWEEN_START_AND_END:I = 0x22a

.field static final SELECT_TEXT:I = 0xd5

.field static final SELECT_WORD_AT:I = 0xd6

.field static final SET_ACTIVE:I = 0x8e

.field static final SET_BACKGROUND_COLOR:I = 0x7e

.field static final SET_COLOR_CHOICE:I = 0xc9

.field static final SET_COMPOSING_SELECTION:I = 0x21b

.field static final SET_COMPOSING_SELECTION_NONE:I = 0x219

.field static final SET_CURSOR_FROM_RANGE_SELECTION:I = 0x22b

.field static final SET_EDITABLE:I = 0x207

.field static final SET_GLOBAL_BOUNDS:I = 0x74

.field static final SET_INITIAL_FOCUS:I = 0xe0

.field static final SET_JS_FLAGS:I = 0xae

.field static final SET_LOADED_FLAG:I = 0xda

.field static final SET_MOVE_MOUSE:I = 0x87

.field static final SET_NETWORK_STATE:I = 0x77

.field static final SET_NETWORK_TYPE:I = 0xb7

.field static final SET_PAGE_ZOOM:I = 0x228

.field static final SET_READABILITY_FLAG:I = 0xd9

.field static final SET_SCROLL_OFFSET:I = 0x6b

.field static final SET_SELECTION:I = 0x71

.field static final SET_SELECTION_FOR_EDITING:I = 0x1fe

.field static final SET_SELECTION_NONE:I = 0x20b

.field static final SET_USE_MOCK_DEVICE_ORIENTATION:I = 0xbf

.field static final SHOW_ACTION_BAR:I = 0x21f

.field static final SINGLE_LISTBOX_CHOICE:I = 0x7c

.field static final STOP_LOADING:I = 0x65

.field static final TRUST_STORAGE_UPDATED:I = 0xdc

.field static final UNMARK_WORD:I = 0xf0

.field static final UPDATE_IM_SELECTION:I = 0x21a

.field static final VIEW_SIZE_CHANGED:I = 0x69

.field static final WEBKIT_DRAW:I = 0x82


# instance fields
.field private mBlockMessages:Z

.field private mDestroying:Z

.field private mHandler:Landroid/os/Handler;

.field private mMessages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedPriority:I

.field private mTid:I

.field final synthetic this$0:Landroid/webkit/WebViewCore;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewCore;)V
    .locals 1
    .parameter

    .prologue
    .line 1747
    iput-object p1, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1735
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    .line 1747
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewCore$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1515
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;-><init>(Landroid/webkit/WebViewCore;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/WebViewCore$EventHub;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1515
    iget v0, p0, Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I

    return v0
.end method

.method static synthetic access$1002(Landroid/webkit/WebViewCore$EventHub;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1515
    iput p1, p0, Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I

    return p1
.end method

.method static synthetic access$1100(Landroid/webkit/WebViewCore$EventHub;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1515
    iget v0, p0, Landroid/webkit/WebViewCore$EventHub;->mTid:I

    return v0
.end method

.method static synthetic access$13200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1515
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$13300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1515
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$13400(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1515
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method static synthetic access$13500(Landroid/webkit/WebViewCore$EventHub;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1515
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$13600(Landroid/webkit/WebViewCore$EventHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1515
    invoke-direct {p0}, Landroid/webkit/WebViewCore$EventHub;->removeMessages()V

    return-void
.end method

.method static synthetic access$13700(Landroid/webkit/WebViewCore$EventHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1515
    invoke-direct {p0}, Landroid/webkit/WebViewCore$EventHub;->blockMessages()V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkit/WebViewCore$EventHub;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1515
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mDestroying:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/webkit/WebViewCore$EventHub;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1515
    iput-boolean p1, p0, Landroid/webkit/WebViewCore$EventHub;->mDestroying:Z

    return p1
.end method

.method static synthetic access$200(Landroid/webkit/WebViewCore$EventHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1515
    invoke-direct {p0}, Landroid/webkit/WebViewCore$EventHub;->transferMessages()V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/WebViewCore$EventHub;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1515
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Landroid/webkit/WebViewCore$EventHub;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1515
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    return-object v0
.end method

.method private declared-synchronized blockMessages()V
    .locals 1

    .prologue
    .line 2983
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2984
    monitor-exit p0

    return-void

    .line 2983
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeMessages()V
    .locals 2

    .prologue
    .line 2971
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$13102(Landroid/webkit/WebViewCore;Z)Z

    .line 2972
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 2973
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2977
    :goto_0
    monitor-exit p0

    return-void

    .line 2975
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2971
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeMessages(I)V
    .locals 4
    .parameter "what"

    .prologue
    .line 2926
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 2943
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2929
    :cond_1
    const/16 v2, 0x82

    if-ne p1, v2, :cond_2

    .line 2930
    :try_start_1
    iget-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z
    invoke-static {v2, v3}, Landroid/webkit/WebViewCore;->access$13102(Landroid/webkit/WebViewCore;Z)Z

    .line 2932
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    if-eqz v2, :cond_4

    .line 2933
    iget-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2934
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2935
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 2936
    .local v1, m:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p1, :cond_3

    .line 2937
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2926
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/Message;>;"
    .end local v1           #m:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2941
    :cond_4
    :try_start_2
    iget-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2915
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2923
    :goto_0
    monitor-exit p0

    return-void

    .line 2918
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 2919
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2915
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2921
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2956
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2964
    :goto_0
    monitor-exit p0

    return-void

    .line 2959
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 2960
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2956
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2962
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1
    .parameter "msg"
    .parameter "delay"

    .prologue
    .line 2946
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2950
    :goto_0
    monitor-exit p0

    return-void

    .line 2949
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2946
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private transferMessages()V
    .locals 4

    .prologue
    .line 1756
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebViewCore$EventHub;->mTid:I

    .line 1757
    iget v2, p0, Landroid/webkit/WebViewCore$EventHub;->mTid:I

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I

    .line 1759
    new-instance v2, Landroid/webkit/WebViewCore$EventHub$1;

    invoke-direct {v2, p0}, Landroid/webkit/WebViewCore$EventHub$1;-><init>(Landroid/webkit/WebViewCore$EventHub;)V

    iput-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    .line 2823
    monitor-enter p0

    .line 2824
    :try_start_0
    iget-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 2825
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2826
    iget-object v3, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2825
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2828
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    .line 2829
    monitor-exit p0

    .line 2830
    return-void

    .line 2829
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public dispatchWebKitEvent(Landroid/webkit/WebViewInputDispatcher;Landroid/view/MotionEvent;II)Z
    .locals 27
    .parameter "dispatcher"
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 2840
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v2

    if-nez v2, :cond_0

    .line 2841
    const/4 v2, 0x0

    .line 2907
    :goto_0
    return v2

    .line 2843
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 2907
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2845
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v23

    .line 2846
    .local v23, x:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v25

    .line 2847
    .local v25, y:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScaledNavSlop()I

    move-result v3

    const/4 v4, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    #calls: Landroid/webkit/WebViewCore;->performHitTest(IIIZ)Landroid/webkit/WebViewCore$WebKitHitTest;
    invoke-static {v2, v0, v1, v3, v4}, Landroid/webkit/WebViewCore;->access$8500(Landroid/webkit/WebViewCore;IIIZ)Landroid/webkit/WebViewCore$WebKitHitTest;

    move-result-object v18

    .line 2849
    .local v18, hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x83

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2851
    const/4 v2, 0x0

    goto :goto_0

    .line 2854
    .end local v18           #hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    .end local v23           #x:I
    .end local v25           #y:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v3

    #calls: Landroid/webkit/WebViewCore;->nativeMouseClick(I)Z
    invoke-static {v2, v3}, Landroid/webkit/WebViewCore;->access$12900(Landroid/webkit/WebViewCore;I)Z

    move-result v2

    goto :goto_0

    .line 2857
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 2858
    .local v8, count:I
    new-array v5, v8, [I

    .line 2859
    .local v5, idArray:[I
    new-array v6, v8, [I

    .line 2860
    .local v6, xArray:[I
    new-array v7, v8, [I

    .line 2861
    .local v7, yArray:[I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v8, :cond_1

    .line 2862
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    aput v2, v5, v20

    .line 2863
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v6, v20

    .line 2864
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v7, v20

    .line 2861
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 2866
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    #calls: Landroid/webkit/WebViewCore;->nativeHandleTouchEvent(II[I[I[IIII)I
    invoke-static/range {v2 .. v10}, Landroid/webkit/WebViewCore;->access$13000(Landroid/webkit/WebViewCore;II[I[I[IIII)I

    move-result v21

    .line 2870
    .local v21, touchFlags:I
    if-nez v21, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_2

    .line 2873
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebViewInputDispatcher;->skipWebkitForRemainingTouchStream()V

    .line 2875
    :cond_2
    and-int/lit8 v2, v21, 0x2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2879
    .end local v5           #idArray:[I
    .end local v6           #xArray:[I
    .end local v7           #yArray:[I
    .end local v8           #count:I
    .end local v20           #i:I
    .end local v21           #touchFlags:I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 2880
    .local v24, x1:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v26

    .line 2881
    .local v26, y1:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v3}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScaledNavSlop()I

    move-result v3

    const/4 v4, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    #calls: Landroid/webkit/WebViewCore;->performHitTest(IIIZ)Landroid/webkit/WebViewCore$WebKitHitTest;
    invoke-static {v2, v0, v1, v3, v4}, Landroid/webkit/WebViewCore;->access$8500(Landroid/webkit/WebViewCore;IIIZ)Landroid/webkit/WebViewCore$WebKitHitTest;

    move-result-object v19

    .line 2883
    .local v19, hit1:Landroid/webkit/WebViewCore$WebKitHitTest;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x83

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2885
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    .line 2886
    .local v15, count1:I
    new-array v12, v15, [I

    .line 2887
    .local v12, idArray1:[I
    new-array v13, v15, [I

    .line 2888
    .local v13, xArray1:[I
    new-array v14, v15, [I

    .line 2889
    .local v14, yArray1:[I
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v15, :cond_4

    .line 2890
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    aput v2, v12, v20

    .line 2891
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v13, v20

    .line 2892
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v14, v20

    .line 2889
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 2894
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    #getter for: Landroid/webkit/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewCore;->access$300(Landroid/webkit/WebViewCore;)I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v17

    #calls: Landroid/webkit/WebViewCore;->nativeHandleTouchEvent(II[I[I[IIII)I
    invoke-static/range {v9 .. v17}, Landroid/webkit/WebViewCore;->access$13000(Landroid/webkit/WebViewCore;II[I[I[IIII)I

    move-result v22

    .line 2898
    .local v22, touchFlags1:I
    if-nez v22, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_5

    .line 2901
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebViewInputDispatcher;->skipWebkitForRemainingTouchStream()V

    .line 2903
    :cond_5
    and-int/lit8 v2, v22, 0x2

    if-lez v2, :cond_6

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2843
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public getWebKitLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 2834
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
