.class public Lcom/android/OriginalSettings/ModePreview;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "ModePreview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mModeItem:[Ljava/lang/String;


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/ModePreview;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/OriginalSettings/ModePreview;->mListView:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v3, 0x7f040084

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/ModePreview;->setContentView(I)V

    .line 51
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    sput-object v3, Lcom/android/OriginalSettings/ModePreview;->mModeItem:[Ljava/lang/String;

    .line 52
    sget-object v3, Lcom/android/OriginalSettings/ModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090903

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 53
    sget-object v3, Lcom/android/OriginalSettings/ModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090904

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 54
    sget-object v3, Lcom/android/OriginalSettings/ModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090906

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 55
    sget-object v3, Lcom/android/OriginalSettings/ModePreview;->mModeItem:[Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090905

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 63
    const v3, 0x7f0b00b8

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/OriginalSettings/ModePreview;->mListView:Landroid/widget/ListView;

    .line 64
    iget-object v3, p0, Lcom/android/OriginalSettings/ModePreview;->mListView:Landroid/widget/ListView;

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x7f040085

    sget-object v6, Lcom/android/OriginalSettings/ModePreview;->mModeItem:[Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v3, p0, Lcom/android/OriginalSettings/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 66
    iget-object v3, p0, Lcom/android/OriginalSettings/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_mode_setting"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 67
    iget-object v3, p0, Lcom/android/OriginalSettings/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    iget-object v3, p0, Lcom/android/OriginalSettings/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 70
    const v3, 0x7f0b0158

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 71
    .local v1, ButtonOk:Landroid/widget/Button;
    new-instance v3, Lcom/android/OriginalSettings/ModePreview$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/ModePreview$1;-><init>(Lcom/android/OriginalSettings/ModePreview;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v3, 0x7f0b0157

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 79
    .local v0, ButtonCancel:Landroid/widget/Button;
    new-instance v3, Lcom/android/OriginalSettings/ModePreview$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/ModePreview$2;-><init>(Lcom/android/OriginalSettings/ModePreview;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-static {p0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    const v3, 0x7f0b0156

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/ModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 92
    .local v2, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    .end local v2           #layout:Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ModePreview;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 122
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 123
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f090125

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 124
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0904ed

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 125
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
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
    .line 101
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    invoke-static {p3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PreviewMode"

    const-string v2, "could not persist mode setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 109
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PreviewMode"

    const-string v2, "could not change mode setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 145
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 133
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_setting"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ModePreview;->finish()V

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PreviewMode"

    const-string v3, "could not change mode setting"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 141
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_setting"

    iget-object v4, p0, Lcom/android/OriginalSettings/ModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ModePreview;->finish()V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b03a2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
