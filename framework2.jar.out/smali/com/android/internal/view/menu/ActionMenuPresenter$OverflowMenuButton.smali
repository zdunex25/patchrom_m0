.class Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 650
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 651
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 653
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 654
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 655
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 656
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 659
    #getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mIsParentThemeDeviceDefault:Z
    invoke-static {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$100(Lcom/android/internal/view/menu/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setHoverPopupType(I)V

    .line 662
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setLongClickable(Z)V

    .line 665
    :cond_0
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 669
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    :goto_0
    return v1

    .line 673
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 674
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 14

    .prologue
    const/16 v13, 0x35

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 681
    invoke-super {p0}, Landroid/widget/ImageButton;->performLongClick()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 719
    :goto_0
    return v8

    .line 685
    :cond_0
    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    #getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mIsParentThemeDeviceDefault:Z
    invoke-static {v10}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$100(Lcom/android/internal/view/menu/ActionMenuPresenter;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 686
    const/4 v10, 0x2

    new-array v5, v10, [I

    .line 687
    .local v5, screenPos:[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 688
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getLocationOnScreen([I)V

    .line 689
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 691
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 692
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v7

    .line 693
    .local v7, width:I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v3

    .line 694
    .local v3, height:I
    aget v10, v5, v8

    div-int/lit8 v11, v3, 0x2

    add-int v4, v10, v11

    .line 695
    .local v4, midy:I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v6, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 697
    .local v6, screenWidth:I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v1, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 698
    .local v0, cheatSheet:Landroid/widget/Toast;
    aget v10, v5, v8

    add-int/2addr v10, v3

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v3

    if-ge v10, v11, :cond_2

    .line 700
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v11, 0x2d0

    if-lt v10, v11, :cond_1

    .line 701
    aget v10, v5, v9

    sub-int v10, v6, v10

    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v10, v11

    aget v11, v5, v8

    add-int/2addr v11, v3

    invoke-virtual {v0, v13, v10, v11}, Landroid/widget/Toast;->setGravity(III)V

    .line 714
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 715
    invoke-virtual {p0, v9}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->performHapticFeedback(I)Z

    goto :goto_0

    .line 705
    :cond_1
    aget v10, v5, v9

    sub-int v10, v6, v10

    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v10, v11

    aget v11, v5, v8

    add-int/2addr v11, v3

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    invoke-virtual {v0, v13, v10, v11}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 711
    :cond_2
    const/16 v10, 0x51

    invoke-virtual {v0, v10, v9, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .end local v0           #cheatSheet:Landroid/widget/Toast;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #displayFrame:Landroid/graphics/Rect;
    .end local v3           #height:I
    .end local v4           #midy:I
    .end local v5           #screenPos:[I
    .end local v6           #screenWidth:I
    .end local v7           #width:I
    :cond_3
    move v8, v9

    .line 719
    goto :goto_0
.end method
