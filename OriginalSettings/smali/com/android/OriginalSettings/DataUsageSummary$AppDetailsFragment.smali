.class public Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1832
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/OriginalSettings/DataUsageSummary;Lcom/android/OriginalSettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "parent"
    .parameter "app"
    .parameter "label"

    .prologue
    .line 1836
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1849
    :goto_0
    return-void

    .line 1838
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1839
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "app"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1841
    new-instance v1, Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 1842
    .local v1, fragment:Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1843
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1844
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1845
    .local v2, ft:Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1846
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1847
    invoke-virtual {v2, p2}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1848
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 1853
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1854
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/DataUsageSummary;

    .line 1855
    .local v0, target:Lcom/android/OriginalSettings/DataUsageSummary;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    #setter for: Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$2902(Lcom/android/OriginalSettings/DataUsageSummary;Lcom/android/OriginalSettings/DataUsageSummary$AppItem;)Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    .line 1856
    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$100(Lcom/android/OriginalSettings/DataUsageSummary;)V

    .line 1857
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1861
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1862
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/DataUsageSummary;

    .line 1863
    .local v0, target:Lcom/android/OriginalSettings/DataUsageSummary;
    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$2902(Lcom/android/OriginalSettings/DataUsageSummary;Lcom/android/OriginalSettings/DataUsageSummary$AppItem;)Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    .line 1864
    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->access$100(Lcom/android/OriginalSettings/DataUsageSummary;)V

    .line 1865
    return-void
.end method
