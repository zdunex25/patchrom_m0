.class Landroid/webkit/WebViewClassic$PastePopupWindow;
.super Landroid/widget/PopupWindow;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PastePopupWindow"
.end annotation


# instance fields
.field private mContentView:Landroid/view/ViewGroup;

.field private mPasteTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 593
    iput-object p1, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    .line 594
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x10102c8

    invoke-direct {p0, v3, v6, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 596
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$PastePopupWindow;->setClippingEnabled(Z)V

    .line 597
    new-instance v1, Landroid/widget/LinearLayout;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 598
    .local v1, linearLayout:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 599
    iput-object v1, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 600
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v4, 0x10805c8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 603
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 606
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 609
    .local v2, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    const v3, 0x10900d4

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 611
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 613
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v4, 0x104000b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 614
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$PastePopupWindow;->setContentView(Landroid/view/View;)V

    .line 616
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    .prologue
    .line 643
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$PastePopupWindow;->dismiss()V

    .line 644
    return-void
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x8000

    .line 653
    iget-object v1, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 654
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 659
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 648
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 649
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 650
    return-void
.end method

.method public show(Landroid/graphics/Point;Landroid/graphics/Point;II)V
    .locals 6
    .parameter "cursorBottom"
    .parameter "cursorTop"
    .parameter "windowLeft"
    .parameter "windowTop"

    .prologue
    .line 620
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$PastePopupWindow;->measureContent()V

    .line 622
    iget-object v4, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 623
    .local v1, width:I
    iget-object v4, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 624
    .local v0, height:I
    iget v4, p2, Landroid/graphics/Point;->y:I

    sub-int v3, v4, v0

    .line 625
    .local v3, y:I
    iget v4, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v1, 0x2

    sub-int v2, v4, v5

    .line 626
    .local v2, x:I
    if-ge v3, p4, :cond_0

    .line 629
    iget-object v4, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)V

    .line 630
    iget v4, p1, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int v3, v4, v5

    .line 631
    iget v4, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v1, 0x2

    sub-int v2, v4, v5

    .line 633
    :cond_0
    if-ge v2, p3, :cond_1

    .line 634
    move v2, p3

    .line 636
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$PastePopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 637
    iget-object v4, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/webkit/WebViewClassic$PastePopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 639
    :cond_2
    invoke-virtual {p0, v2, v3, v1, v0}, Landroid/webkit/WebViewClassic$PastePopupWindow;->update(IIII)V

    .line 640
    return-void
.end method
