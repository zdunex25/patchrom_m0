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
.field private mClipboardTextView:Landroid/widget/TextView;

.field private mContentView:Landroid/view/ViewGroup;

.field private mDividerImageView:Landroid/widget/ImageView;

.field private mPasteTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 11
    .parameter

    .prologue
    const v10, 0x1090131

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 782
    iput-object p1, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    .line 783
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x10102c8

    invoke-direct {p0, v6, v8, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 785
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic$PastePopupWindow;->setClippingEnabled(Z)V

    .line 786
    new-instance v4, Landroid/widget/LinearLayout;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 787
    .local v4, linearLayout:Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 788
    iput-object v4, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 790
    #getter for: Landroid/webkit/WebViewClassic;->mThemeIsDeviceDefault:Z
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 791
    iget-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v7, 0x10800b8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 798
    :goto_0
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 801
    .local v3, inflater:Landroid/view/LayoutInflater;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 805
    .local v5, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    #getter for: Landroid/webkit/WebViewClassic;->mThemeIsDeviceDefault:Z
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 806
    invoke-virtual {v3, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 813
    :goto_1
    iget-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    iget-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v7, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 815
    iget-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v7, 0x104000b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 816
    iget-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    #getter for: Landroid/webkit/WebViewClassic;->mThemeIsDeviceDefault:Z
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 820
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10800b7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 821
    .local v2, drawablePaste:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 823
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v0, v9, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 828
    .local v0, dividerImageViewLayout:Landroid/view/ViewGroup$LayoutParams;
    const v6, 0x1090130

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mDividerImageView:Landroid/widget/ImageView;

    .line 829
    iget-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mDividerImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    iget-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v7, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mDividerImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 833
    invoke-virtual {v3, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    .line 835
    iget-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 836
    iget-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v7, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 837
    iget-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    const v7, 0x1040018

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 838
    iget-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 839
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10800b6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 840
    .local v1, drawableClipboard:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 843
    .end local v0           #dividerImageViewLayout:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #drawableClipboard:Landroid/graphics/drawable/Drawable;
    .end local v2           #drawablePaste:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v6}, Landroid/webkit/WebViewClassic$PastePopupWindow;->setContentView(Landroid/view/View;)V

    .line 844
    return-void

    .line 794
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #wrapContent:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v7, 0x1080758

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 809
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #wrapContent:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const v6, 0x10900f0

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    goto/16 :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 0

    .prologue
    .line 871
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$PastePopupWindow;->dismiss()V

    .line 872
    return-void
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x8000

    .line 893
    iget-object v1, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 894
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 899
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 877
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 878
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 879
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 880
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 882
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->pasteFromClipboardEx()V

    goto :goto_0

    .line 887
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 888
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_0
.end method

.method public show(Landroid/graphics/Point;Landroid/graphics/Point;II)V
    .locals 6
    .parameter "cursorBottom"
    .parameter "cursorTop"
    .parameter "windowLeft"
    .parameter "windowTop"

    .prologue
    .line 848
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$PastePopupWindow;->measureContent()V

    .line 850
    iget-object v4, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 851
    .local v1, width:I
    iget-object v4, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 852
    .local v0, height:I
    iget v4, p2, Landroid/graphics/Point;->y:I

    sub-int v3, v4, v0

    .line 853
    .local v3, y:I
    iget v4, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v1, 0x2

    sub-int v2, v4, v5

    .line 854
    .local v2, x:I
    if-ge v3, p4, :cond_0

    .line 857
    iget-object v4, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)V

    .line 858
    iget v4, p1, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Landroid/webkit/WebViewClassic;->access$1400(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int v3, v4, v5

    .line 859
    iget v4, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v1, 0x2

    sub-int v2, v4, v5

    .line 861
    :cond_0
    if-ge v2, p3, :cond_1

    .line 862
    move v2, p3

    .line 864
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$PastePopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 865
    iget-object v4, p0, Landroid/webkit/WebViewClassic$PastePopupWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/webkit/WebViewClassic$PastePopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 867
    :cond_2
    invoke-virtual {p0, v2, v3, v1, v0}, Landroid/webkit/WebViewClassic$PastePopupWindow;->update(IIII)V

    .line 868
    return-void
.end method
