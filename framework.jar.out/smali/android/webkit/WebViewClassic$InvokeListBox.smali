.class Landroid/webkit/WebViewClassic$InvokeListBox;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvokeListBox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;,
        Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;,
        Landroid/webkit/WebViewClassic$InvokeListBox$Container;
    }
.end annotation


# instance fields
.field private mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

.field private mMultiple:Z

.field private mSelectedArray:[I

.field private mSelection:I

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;[Ljava/lang/String;[II)V
    .locals 5
    .parameter
    .parameter "array"
    .parameter "enabled"
    .parameter "selection"

    .prologue
    .line 11109
    iput-object p1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11110
    iput p4, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mSelection:I

    .line 11111
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mMultiple:Z

    .line 11113
    array-length v1, p2

    .line 11114
    .local v1, length:I
    new-array v2, v1, [Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    .line 11115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 11116
    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    new-instance v3, Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebViewClassic$InvokeListBox$Container;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;Landroid/webkit/WebViewClassic$1;)V

    aput-object v3, v2, v0

    .line 11117
    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 11118
    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mEnabled:I

    .line 11119
    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mId:I

    .line 11115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11121
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;[Ljava/lang/String;[IILandroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 10964
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClassic$InvokeListBox;-><init>(Landroid/webkit/WebViewClassic;[Ljava/lang/String;[II)V

    return-void
.end method

.method private constructor <init>(Landroid/webkit/WebViewClassic;[Ljava/lang/String;[I[I)V
    .locals 5
    .parameter
    .parameter "array"
    .parameter "enabled"
    .parameter "selected"

    .prologue
    .line 11095
    iput-object p1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11096
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mMultiple:Z

    .line 11097
    iput-object p4, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mSelectedArray:[I

    .line 11099
    array-length v1, p2

    .line 11100
    .local v1, length:I
    new-array v2, v1, [Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    .line 11101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 11102
    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    new-instance v3, Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebViewClassic$InvokeListBox$Container;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;Landroid/webkit/WebViewClassic$1;)V

    aput-object v3, v2, v0

    .line 11103
    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 11104
    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mEnabled:I

    .line 11105
    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mId:I

    .line 11101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11107
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;[Ljava/lang/String;[I[ILandroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 10964
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClassic$InvokeListBox;-><init>(Landroid/webkit/WebViewClassic;[Ljava/lang/String;[I[I)V

    return-void
.end method

.method static synthetic access$11100(Landroid/webkit/WebViewClassic$InvokeListBox;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 10964
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mMultiple:Z

    return v0
.end method

.method static synthetic access$11200(Landroid/webkit/WebViewClassic$InvokeListBox;)[Landroid/webkit/WebViewClassic$InvokeListBox$Container;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10964
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 11170
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v9

    .line 11171
    .local v9, settings:Landroid/webkit/WebSettingsClassic;
    if-eqz v9, :cond_1

    .line 11172
    invoke-virtual {v9}, Landroid/webkit/WebSettingsClassic;->getPopUpBrowserState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11173
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v1

    const/16 v2, 0x7c

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3, v11}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 11174
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040744

    invoke-static {v1, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 11344
    :cond_0
    :goto_0
    return-void

    .line 11180
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11186
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090149

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 11188
    .local v4, listView:Landroid/widget/ListView;
    new-instance v5, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;

    invoke-direct {v5, p0}, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;)V

    .line 11193
    .local v5, adapter:Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;
    const/4 v8, 0x1

    .line 11194
    .local v8, rebuildDialog:Z
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    if-nez v1, :cond_2

    .line 11195
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v2, Landroid/webkit/WebSelectDialog;

    iget-object v3, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebSelectDialog;-><init>(Landroid/content/Context;)V

    #setter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1, v2}, Landroid/webkit/WebViewClassic;->access$7902(Landroid/webkit/WebViewClassic;Landroid/webkit/WebSelectDialog;)Landroid/webkit/WebSelectDialog;

    .line 11196
    const/4 v8, 0x0

    .line 11201
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSelectDialog;->setListView(Landroid/widget/ListView;)V

    .line 11203
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v1, v1, Landroid/webkit/WebViewClassic;->mIsTextFieldNext:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v1, v1, Landroid/webkit/WebViewClassic;->mIsSelectFieldNext:Z

    if-eqz v1, :cond_5

    .line 11204
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v10, v10}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    .line 11205
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    new-instance v2, Landroid/webkit/WebViewClassic$InvokeListBox$1;

    invoke-direct {v2, p0, v5, v4}, Landroid/webkit/WebViewClassic$InvokeListBox$1;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v1, v10, v2}, Landroid/webkit/WebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 11230
    :goto_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v1, v1, Landroid/webkit/WebViewClassic;->mIsTextFieldPrev:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v1, v1, Landroid/webkit/WebViewClassic;->mIsSelectFieldPrev:Z

    if-eqz v1, :cond_6

    .line 11231
    :cond_4
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v12, v10}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    .line 11232
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    new-instance v2, Landroid/webkit/WebViewClassic$InvokeListBox$2;

    invoke-direct {v2, p0, v5, v4}, Landroid/webkit/WebViewClassic$InvokeListBox$2;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v1, v12, v2}, Landroid/webkit/WebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 11256
    :goto_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v13, v10}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    .line 11257
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    new-instance v2, Landroid/webkit/WebViewClassic$InvokeListBox$3;

    invoke-direct {v2, p0, v5, v4}, Landroid/webkit/WebViewClassic$InvokeListBox$3;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v1, v13, v2}, Landroid/webkit/WebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 11275
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11276
    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 11277
    invoke-virtual {v4, v11}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    .line 11284
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mMultiple:Z

    if-nez v1, :cond_7

    move v1, v10

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 11285
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mMultiple:Z

    if-eqz v1, :cond_8

    .line 11286
    invoke-virtual {v4, v12}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 11287
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mSelectedArray:[I

    array-length v7, v1

    .line 11288
    .local v7, length:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    if-ge v6, v7, :cond_9

    .line 11289
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mSelectedArray:[I

    aget v1, v1, v6

    invoke-virtual {v4, v1, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 11288
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 11227
    .end local v6           #i:I
    .end local v7           #length:I
    :cond_5
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    goto :goto_1

    .line 11253
    :cond_6
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1, v12, v11}, Landroid/webkit/WebSelectDialog;->setButtonEnabled(IZ)V

    goto :goto_2

    :cond_7
    move v1, v11

    .line 11284
    goto :goto_3

    .line 11292
    :cond_8
    new-instance v1, Landroid/webkit/WebViewClassic$InvokeListBox$4;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewClassic$InvokeListBox$4;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;)V

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 11309
    iget v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mSelection:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    .line 11310
    iget v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mSelection:I

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 11311
    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 11312
    iget v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mSelection:I

    invoke-virtual {v4, v1, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 11313
    new-instance v0, Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;

    iget v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mSelection:I

    invoke-virtual {v5, v1}, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->getItemId(I)J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;JLandroid/widget/ListView;Landroid/widget/Adapter;)V

    .line 11315
    .local v0, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v5, v0}, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 11318
    .end local v0           #observer:Landroid/database/DataSetObserver;
    :cond_9
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    new-instance v2, Landroid/webkit/WebViewClassic$InvokeListBox$5;

    invoke-direct {v2, p0}, Landroid/webkit/WebViewClassic$InvokeListBox$5;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSelectDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 11328
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    new-instance v2, Landroid/webkit/WebViewClassic$InvokeListBox$6;

    invoke-direct {v2, p0}, Landroid/webkit/WebViewClassic$InvokeListBox$6;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSelectDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 11337
    if-ne v8, v10, :cond_a

    .line 11338
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSelectDialog;->rebuildView()V

    .line 11341
    :cond_a
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #setter for: Landroid/webkit/WebViewClassic;->mSelectFocusMoved:Z
    invoke-static {v1, v11}, Landroid/webkit/WebViewClassic;->access$8002(Landroid/webkit/WebViewClassic;Z)Z

    .line 11342
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebSelectDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSelectDialog;->show()V

    .line 11343
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #setter for: Landroid/webkit/WebViewClassic;->bWebSelectDialogIsUp:Z
    invoke-static {v1, v10}, Landroid/webkit/WebViewClassic;->access$7802(Landroid/webkit/WebViewClassic;Z)Z

    goto/16 :goto_0
.end method
