.class Lcom/android/gallery3d/filtershow/PanelController$Panel;
.super Ljava/lang/Object;
.source "PanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/PanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Panel"
.end annotation


# instance fields
.field private final mContainer:Landroid/view/View;

.field private mPosition:I

.field private final mSubviews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/gallery3d/filtershow/PanelController;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "container"
    .parameter "position"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mPosition:I

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mSubviews:Ljava/util/Vector;

    .line 68
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mView:Landroid/view/View;

    .line 69
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    .line 70
    iput p4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mPosition:I

    .line 71
    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/filtershow/PanelController$Panel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mSubviews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mPosition:I

    return v0
.end method

.method public select(II)Landroid/view/ViewPropertyAnimator;
    .locals 6
    .parameter "oldPos"
    .parameter "move"

    .prologue
    const/4 v5, 0x0

    .line 109
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 110
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    .line 112
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setY(F)V

    .line 113
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 114
    .local v0, anim:Landroid/view/ViewPropertyAnimator;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/PanelController;->access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 115
    .local v2, w:I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/PanelController;->access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 116
    .local v1, h:I
    invoke-static {}, Lcom/android/gallery3d/filtershow/PanelController;->access$100()I

    move-result v3

    if-ne p2, v3, :cond_2

    .line 117
    iget v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mPosition:I

    if-ge p1, v3, :cond_1

    .line 118
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    .line 122
    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 127
    :cond_0
    :goto_1
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 128
    return-object v0

    .line 120
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/filtershow/PanelController;->access$200()I

    move-result v3

    if-ne p2, v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 125
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method public unselect(II)Landroid/view/ViewPropertyAnimator;
    .locals 7
    .parameter "newPos"
    .parameter "move"

    .prologue
    const/4 v6, 0x0

    .line 82
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 83
    .local v0, anim:Landroid/view/ViewPropertyAnimator;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 84
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setX(F)V

    .line 85
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setY(F)V

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, delta:I
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v4}, Lcom/android/gallery3d/filtershow/PanelController;->access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 88
    .local v3, w:I
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v4}, Lcom/android/gallery3d/filtershow/PanelController;->access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 89
    .local v2, h:I
    invoke-static {}, Lcom/android/gallery3d/filtershow/PanelController;->access$100()I

    move-result v4

    if-ne p2, v4, :cond_2

    .line 90
    iget v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mPosition:I

    if-le p1, v4, :cond_1

    .line 91
    neg-int v1, v3

    .line 95
    :goto_0
    int-to-float v4, v1

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 99
    :cond_0
    :goto_1
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/gallery3d/filtershow/PanelController$Panel$1;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/filtershow/PanelController$Panel$1;-><init>(Lcom/android/gallery3d/filtershow/PanelController$Panel;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 105
    return-object v0

    .line 93
    :cond_1
    move v1, v3

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/filtershow/PanelController;->access$200()I

    move-result v4

    if-ne p2, v4, :cond_0

    .line 97
    int-to-float v4, v2

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method
