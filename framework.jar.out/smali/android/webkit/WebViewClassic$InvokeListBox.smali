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
    .line 8266
    iput-object p1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8267
    iput p4, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mSelection:I

    .line 8268
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mMultiple:Z

    .line 8270
    array-length v1, p2

    .line 8271
    .local v1, length:I
    new-array v2, v1, [Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    .line 8272
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 8273
    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    new-instance v3, Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebViewClassic$InvokeListBox$Container;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;Landroid/webkit/WebViewClassic$1;)V

    aput-object v3, v2, v0

    .line 8274
    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 8275
    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mEnabled:I

    .line 8276
    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mId:I

    .line 8272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8278
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
    .line 8121
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
    .line 8252
    iput-object p1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8253
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mMultiple:Z

    .line 8254
    iput-object p4, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mSelectedArray:[I

    .line 8256
    array-length v1, p2

    .line 8257
    .local v1, length:I
    new-array v2, v1, [Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    .line 8258
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 8259
    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    new-instance v3, Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebViewClassic$InvokeListBox$Container;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;Landroid/webkit/WebViewClassic$1;)V

    aput-object v3, v2, v0

    .line 8260
    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget-object v3, p2, v0

    iput-object v3, v2, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mString:Ljava/lang/String;

    .line 8261
    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    aget v3, p3, v0

    iput v3, v2, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mEnabled:I

    .line 8262
    iget-object v2, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    aget-object v2, v2, v0

    iput v0, v2, Landroid/webkit/WebViewClassic$InvokeListBox$Container;->mId:I

    .line 8258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8264
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
    .line 8121
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClassic$InvokeListBox;-><init>(Landroid/webkit/WebViewClassic;[Ljava/lang/String;[I[I)V

    return-void
.end method

.method static synthetic access$8000(Landroid/webkit/WebViewClassic$InvokeListBox;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 8121
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mMultiple:Z

    return v0
.end method

.method static synthetic access$8100(Landroid/webkit/WebViewClassic$InvokeListBox;)[Landroid/webkit/WebViewClassic$InvokeListBox$Container;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8121
    iget-object v0, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkit/WebViewClassic$InvokeListBox$Container;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 8326
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$1600(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

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

    if-nez v1, :cond_1

    .line 8407
    :cond_0
    :goto_0
    return-void

    .line 8332
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x10900c3

    const/4 v9, 0x0

    invoke-virtual {v1, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 8334
    .local v4, listView:Landroid/widget/ListView;
    new-instance v5, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;

    invoke-direct {v5, p0}, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;)V

    .line 8335
    .local v5, adapter:Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 8339
    .local v6, b:Landroid/app/AlertDialog$Builder;
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mMultiple:Z

    if-eqz v1, :cond_2

    .line 8340
    const v1, 0x104000a

    new-instance v3, Landroid/webkit/WebViewClassic$InvokeListBox$1;

    invoke-direct {v3, p0, v5, v4}, Landroid/webkit/WebViewClassic$InvokeListBox$1;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v6, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8348
    const/high16 v1, 0x104

    new-instance v3, Landroid/webkit/WebViewClassic$InvokeListBox$2;

    invoke-direct {v3, p0}, Landroid/webkit/WebViewClassic$InvokeListBox$2;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;)V

    invoke-virtual {v6, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8356
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    #setter for: Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v3}, Landroid/webkit/WebViewClassic;->access$8302(Landroid/webkit/WebViewClassic;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 8357
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8358
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 8365
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mMultiple:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 8366
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mMultiple:Z

    if-eqz v1, :cond_4

    .line 8367
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 8368
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mSelectedArray:[I

    array-length v8, v1

    .line 8369
    .local v8, length:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v8, :cond_5

    .line 8370
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mSelectedArray:[I

    aget v1, v1, v7

    invoke-virtual {v4, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 8369
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 8365
    .end local v7           #i:I
    .end local v8           #length:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 8373
    :cond_4
    new-instance v1, Landroid/webkit/WebViewClassic$InvokeListBox$3;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewClassic$InvokeListBox$3;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;)V

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8387
    iget v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mSelection:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 8388
    iget v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mSelection:I

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 8389
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 8390
    iget v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mSelection:I

    invoke-virtual {v4, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 8391
    new-instance v0, Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;

    iget v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->mSelection:I

    invoke-virtual {v5, v1}, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->getItemId(I)J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;JLandroid/widget/ListView;Landroid/widget/Adapter;)V

    .line 8393
    .local v0, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v5, v0}, Landroid/webkit/WebViewClassic$InvokeListBox$MyArrayListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 8396
    .end local v0           #observer:Landroid/database/DataSetObserver;
    :cond_5
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$8300(Landroid/webkit/WebViewClassic;)Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Landroid/webkit/WebViewClassic$InvokeListBox$4;

    invoke-direct {v2, p0}, Landroid/webkit/WebViewClassic$InvokeListBox$4;-><init>(Landroid/webkit/WebViewClassic$InvokeListBox;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 8406
    iget-object v1, p0, Landroid/webkit/WebViewClassic$InvokeListBox;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mListBoxDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$8300(Landroid/webkit/WebViewClassic;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
