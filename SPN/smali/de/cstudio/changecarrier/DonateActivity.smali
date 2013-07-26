.class public Lde/cstudio/changecarrier/DonateActivity;
.super Landroid/app/Activity;
.source "DonateActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x7

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0, v4}, Lde/cstudio/changecarrier/DonateActivity;->requestWindowFeature(I)Z

    move-result v1

    .line 19
    .local v1, titleBarSupport:Z
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lde/cstudio/changecarrier/DonateActivity;->setContentView(I)V

    .line 21
    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {p0}, Lde/cstudio/changecarrier/DonateActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f030002

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 25
    :cond_0
    const v2, 0x7f090003

    invoke-virtual {p0, v2}, Lde/cstudio/changecarrier/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 26
    .local v0, donate:Landroid/widget/Button;
    new-instance v2, Lde/cstudio/changecarrier/DonateActivity$1;

    invoke-direct {v2, p0}, Lde/cstudio/changecarrier/DonateActivity$1;-><init>(Lde/cstudio/changecarrier/DonateActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method
