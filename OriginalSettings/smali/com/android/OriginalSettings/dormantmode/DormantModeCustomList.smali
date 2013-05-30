.class public Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "DormantModeCustomList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment;
    }
.end annotation


# static fields
.field private static mlistView:Landroid/widget/ListView;


# instance fields
.field private list:Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic access$000()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList;->mlistView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    sput-object p0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList;->mlistView:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x1020002

    .line 43
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 46
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment;

    invoke-direct {v1}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment;-><init>()V

    iput-object v1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList;->list:Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment;

    .line 48
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList;->list:Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment;

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 51
    :cond_0
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList;->list:Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment;

    invoke-virtual {v0, p2}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomList$CustomListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 57
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/BaseActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method
