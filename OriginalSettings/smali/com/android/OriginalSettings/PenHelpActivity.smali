.class public Lcom/android/OriginalSettings/PenHelpActivity;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "PenHelpActivity.java"


# instance fields
.field private img1:Landroid/widget/ImageView;

.field private img2:Landroid/widget/ImageView;

.field private img3:Landroid/widget/ImageView;

.field private img4:Landroid/widget/ImageView;

.field private img5:Landroid/widget/ImageView;

.field private img6:Landroid/widget/ImageView;

.field private mAni1:Landroid/graphics/drawable/AnimationDrawable;

.field private mAni2:Landroid/graphics/drawable/AnimationDrawable;

.field private mAni3:Landroid/graphics/drawable/AnimationDrawable;

.field private mAni4:Landroid/graphics/drawable/AnimationDrawable;

.field private mAni5:Landroid/graphics/drawable/AnimationDrawable;

.field private mAni6:Landroid/graphics/drawable/AnimationDrawable;

.field private penHelpMenu:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 53
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 54
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "pen_help_menu"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/OriginalSettings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    .line 56
    const-string v2, "hovering"

    iget-object v3, p0, Lcom/android/OriginalSettings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    const v2, 0x7f040090

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->setContentView(I)V

    .line 59
    const v2, 0x7f0b016f

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    .local v0, hoveringButton:Landroid/widget/Button;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setHoverPopupType(I)V

    .line 61
    invoke-virtual {v0}, Landroid/widget/Button;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 62
    invoke-virtual {v0}, Landroid/widget/Button;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    const v3, 0x7f0909eb

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 64
    const v2, 0x7f0b0170

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0909ec

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v2, 0x7f0b0171

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0909ef

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v2, 0x7f0b0173

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0909f1

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v2, 0x7f0b0175

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0909f3

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v2, 0x7f0b0176

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "5. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0909f5

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .end local v0           #hoveringButton:Landroid/widget/Button;
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v2, "gesture"

    iget-object v3, p0, Lcom/android/OriginalSettings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    const v2, 0x7f04008f

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->setContentView(I)V

    .line 73
    const v2, 0x7f0b0166

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0909f9

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v2, 0x7f0b0167

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0909fb

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v2, 0x7f0b0168

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0909fd

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v2, 0x7f0b0169

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0909ff

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v2, 0x7f0b016a

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "5. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a01

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v2, 0x7f0b016b

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "6. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a03

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v2, 0x7f0b016d

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "7. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a05

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 81
    :cond_2
    const-string v2, "quickcommand"

    iget-object v3, p0, Lcom/android/OriginalSettings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const v2, 0x7f040092

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->setContentView(I)V

    .line 84
    const v2, 0x7f0b0178

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a08

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v2, 0x7f0b017a

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a0a

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v2, 0x7f0b017b

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a0c

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v2, 0x7f0b017c

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a0d

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v2, 0x7f0b017e

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "b. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a0e

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v2, 0x7f0b0180

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a0f

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v2, 0x7f0b0184

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "5. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a12

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v2, 0x7f0b0185

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "6. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a14

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v2, 0x7f0b0186

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a15

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v2, 0x7f0b0187

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "b. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a16

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v2, 0x7f0b0188

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a17

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v2, 0x7f0b0189

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "d. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a18

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v2, 0x7f0b018a

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "7. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a19

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v2, 0x7f0b018b

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a1a

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v2, 0x7f0b018c

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "b. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a1b

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v2, 0x7f0b018d

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a1c

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v2, 0x7f0b018e

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "d. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090a1d

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PenHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onDestroy()V

    .line 184
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img6:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iput-object v1, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img6:Landroid/widget/ImageView;

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_6

    .line 192
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 193
    iput-object v1, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    .line 195
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_7

    .line 196
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 197
    iput-object v1, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    .line 199
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni3:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_8

    .line 200
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni3:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 201
    iput-object v1, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni3:Landroid/graphics/drawable/AnimationDrawable;

    .line 203
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni4:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_9

    .line 204
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni4:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 205
    iput-object v1, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni4:Landroid/graphics/drawable/AnimationDrawable;

    .line 207
    :cond_9
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni5:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_a

    .line 208
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni5:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 209
    iput-object v1, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni5:Landroid/graphics/drawable/AnimationDrawable;

    .line 211
    :cond_a
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni6:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_b

    .line 212
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni6:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 213
    iput-object v1, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni6:Landroid/graphics/drawable/AnimationDrawable;

    .line 216
    :cond_b
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenHelpActivity;->finish()V

    .line 217
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onWindowFocusChanged(Z)V

    .line 110
    if-eqz p1, :cond_1

    .line 111
    const-string v0, "hovering"

    iget-object v1, p0, Lcom/android/OriginalSettings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 113
    const v0, 0x7f0b0172

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    .line 114
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    const v1, 0x7f020249

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 115
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    .line 116
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 119
    const v0, 0x7f0b0174

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    const v1, 0x7f02024a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 121
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    .line 122
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    const-string v0, "gesture"

    iget-object v1, p0, Lcom/android/OriginalSettings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    .line 126
    const v0, 0x7f0b016c

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    .line 127
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    const v1, 0x7f020247

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 128
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    .line 129
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 132
    const v0, 0x7f0b016e

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    const v1, 0x7f020248

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 134
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    .line 135
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 137
    :cond_4
    const-string v0, "quickcommand"

    iget-object v1, p0, Lcom/android/OriginalSettings/PenHelpActivity;->penHelpMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 139
    const v0, 0x7f0b0179

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    const v1, 0x7f020241

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 141
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    .line 142
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    .line 145
    const v0, 0x7f0b017d

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    .line 146
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    const v1, 0x7f020242

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 147
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    .line 148
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 150
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    if-nez v0, :cond_7

    .line 151
    const v0, 0x7f0b017f

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img3:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni3:Landroid/graphics/drawable/AnimationDrawable;

    .line 154
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni3:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 156
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    if-nez v0, :cond_8

    .line 157
    const v0, 0x7f0b0181

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    .line 158
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    const v1, 0x7f020244

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 159
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img4:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni4:Landroid/graphics/drawable/AnimationDrawable;

    .line 160
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni4:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 162
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    if-nez v0, :cond_9

    .line 163
    const v0, 0x7f0b0182

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    .line 164
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    const v1, 0x7f020245

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 165
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img5:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni5:Landroid/graphics/drawable/AnimationDrawable;

    .line 166
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni5:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 168
    :cond_9
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img6:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 169
    const v0, 0x7f0b0183

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img6:Landroid/widget/ImageView;

    .line 170
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img6:Landroid/widget/ImageView;

    const v1, 0x7f020246

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 171
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->img6:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni6:Landroid/graphics/drawable/AnimationDrawable;

    .line 172
    iget-object v0, p0, Lcom/android/OriginalSettings/PenHelpActivity;->mAni6:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_0
.end method
