.class Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$2;
.super Ljava/lang/Object;
.source "LockScreenShortcutSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 721
    iget-object v5, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z
    invoke-static {v5}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$000(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 744
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    const/4 v6, 0x1

    #setter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z
    invoke-static {v5, v6}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$002(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z

    .line 725
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 727
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.lockscreenshortcut.AppList"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    const-string v4, ""

    .line 729
    .local v4, shortcut_app_list:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I
    invoke-static {v5}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$100(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 730
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$200(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$200(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 731
    .local v3, shortcut_app:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 729
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 734
    .end local v3           #shortcut_app:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 735
    .local v0, clicked_view_index:I
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I
    invoke-static {v5}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$100(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 736
    iget-object v5, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$300(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 739
    :cond_2
    const-string v5, "clicked_view_index"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 740
    const-string v5, "shortcut_app_list"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    const-string v5, "num_of_shortcut"

    iget-object v6, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I
    invoke-static {v6}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->access$100(Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 742
    const-string v5, "max_num_of_shortcut"

    sget v6, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 743
    iget-object v5, p0, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings$2;->this$0:Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;

    const/16 v6, 0x65

    invoke-virtual {v5, v2, v6}, Lcom/android/OriginalSettings/lockscreenshortcut/LockScreenShortcutSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 735
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
