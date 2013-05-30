.class public Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeTips;
.super Landroid/app/Fragment;
.source "PowerSavingModeTips.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x8

    .line 42
    const v4, 0x7f040095

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 48
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeTips;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    const v4, 0x7f0b0195

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, mBackgroundTips:Landroid/widget/TextView;
    const v4, 0x7f090986

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 61
    .end local v0           #mBackgroundTips:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingModeTips;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    :goto_0
    return-object v3

    .line 63
    :cond_1
    const v4, 0x7f0b0196

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 64
    .local v2, mHapticTipsTitle:Landroid/widget/TextView;
    const v4, 0x7f0b0197

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    .local v1, mHapticTips:Landroid/widget/TextView;
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
