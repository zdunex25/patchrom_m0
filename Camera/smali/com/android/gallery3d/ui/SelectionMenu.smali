.class public Lcom/android/gallery3d/ui/SelectionMenu;
.super Ljava/lang/Object;
.source "SelectionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private final mPopupList:Lcom/android/gallery3d/ui/PopupList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/gallery3d/ui/PopupList$OnPopupItemClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "button"
    .parameter "listener"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionMenu;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/gallery3d/ui/SelectionMenu;->mButton:Landroid/widget/Button;

    .line 38
    new-instance v0, Lcom/android/gallery3d/ui/PopupList;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/PopupList;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SelectionMenu;->mPopupList:Lcom/android/gallery3d/ui/PopupList;

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionMenu;->mPopupList:Lcom/android/gallery3d/ui/PopupList;

    const v1, 0x7f100001

    const v2, 0x7f0a01af

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/PopupList;->addItem(ILjava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionMenu;->mPopupList:Lcom/android/gallery3d/ui/PopupList;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/ui/PopupList;->setOnPopupItemClickListener(Lcom/android/gallery3d/ui/PopupList$OnPopupItemClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionMenu;->mPopupList:Lcom/android/gallery3d/ui/PopupList;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PopupList;->show()V

    .line 48
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public updateSelectAllMode(Z)V
    .locals 3
    .parameter "inSelectAllMode"

    .prologue
    .line 51
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionMenu;->mPopupList:Lcom/android/gallery3d/ui/PopupList;

    const v2, 0x7f100001

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PopupList;->findItem(I)Lcom/android/gallery3d/ui/PopupList$Item;

    move-result-object v0

    .line 52
    .local v0, item:Lcom/android/gallery3d/ui/PopupList$Item;
    if-eqz v0, :cond_0

    .line 53
    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectionMenu;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v1, 0x7f0a01b0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PopupList$Item;->setTitle(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void

    .line 53
    :cond_1
    const v1, 0x7f0a01af

    goto :goto_0
.end method
