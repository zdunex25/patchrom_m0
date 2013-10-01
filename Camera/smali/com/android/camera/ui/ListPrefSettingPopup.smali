.class public Lcom/android/camera/ui/ListPrefSettingPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "ListPrefSettingPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ListPrefSettingPopup$ListPrefSettingAdapter;,
        Lcom/android/camera/ui/ListPrefSettingPopup$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/camera/ui/ListPrefSettingPopup$Listener;

.field private mPreference:Lcom/android/camera/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 12
    .parameter "preference"

    .prologue
    const/4 v11, 0x2

    .line 74
    iput-object p1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    .line 75
    invoke-virtual {p0}, Lcom/android/camera/ui/ListPrefSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 76
    .local v2, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 77
    .local v7, entries:[Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 78
    .local v9, iconIds:[I
    instance-of v1, p1, Lcom/android/camera/IconListPreference;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    check-cast v1, Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getImageIds()[I

    move-result-object v9

    .line 80
    if-nez v9, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    check-cast v1, Lcom/android/camera/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v9

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v3, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v1, v7

    if-ge v8, v1, :cond_2

    .line 91
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v10, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "text"

    aget-object v4, v7, v8

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    if-eqz v9, :cond_1

    const-string v1, "image"

    aget v4, v9, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_1
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 96
    .end local v10           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    new-instance v0, Lcom/android/camera/ui/ListPrefSettingPopup$ListPrefSettingAdapter;

    const v4, 0x7f040041

    new-array v5, v11, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "text"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "image"

    aput-object v6, v5, v1

    new-array v6, v11, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/ListPrefSettingPopup$ListPrefSettingAdapter;-><init>(Lcom/android/camera/ui/ListPrefSettingPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 100
    .local v0, listItemAdapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/ui/ListPrefSettingPopup;->reloadPreference()V

    .line 103
    return-void

    .line 96
    nop

    :array_0
    .array-data 0x4
        0x16t 0x0t 0x10t 0x7ft
        0x15t 0x0t 0x10t 0x7ft
    .end array-data
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "index"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v0, p3}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mListener:Lcom/android/camera/ui/ListPrefSettingPopup$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mListener:Lcom/android/camera/ui/ListPrefSettingPopup$Listener;

    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/ListPrefSettingPopup$Listener;->onListPrefChanged(Lcom/android/camera/ListPreference;)V

    .line 126
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    const-string v1, "ListPrefSettingPopup"

    const-string v2, "Invalid preference value."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->print()V

    goto :goto_0
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/ListPrefSettingPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/camera/ui/ListPrefSettingPopup;->mListener:Lcom/android/camera/ui/ListPrefSettingPopup$Listener;

    .line 119
    return-void
.end method
