.class public Lcom/android/OriginalSettings/wfd/WfdHelpFragment;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WfdHelpFragment.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 29
    const-string v0, "WfdHelpActivity"

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdHelpFragment;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 32
    const-string v0, "WfdHelpActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 40
    const-string v4, "WfdHelpActivity"

    const-string v5, "onCreateView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const v4, 0x7f0400eb

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 43
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0b029a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;

    .line 44
    .local v0, idxTextLayout:Lcom/android/OriginalSettings/wfd/IndexedTextLayout;
    invoke-virtual {v0, v7}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->setIsTablet(Z)V

    .line 46
    const v4, 0x7f0903bd

    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->addContent(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0903be

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, result_msg2:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->addContent(Ljava/lang/String;)V

    .line 51
    const v4, 0x7f0903bf

    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->addContent(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdHelpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0903c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, result_msg4:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/wfd/IndexedTextLayout;->addContent(Ljava/lang/String;)V

    .line 56
    return-object v3
.end method
