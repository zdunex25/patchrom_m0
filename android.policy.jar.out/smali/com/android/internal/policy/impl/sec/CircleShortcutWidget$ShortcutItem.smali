.class public Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;
.super Landroid/widget/LinearLayout;
.source "CircleShortcutWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShortcutItem"
.end annotation


# instance fields
.field private mClsName:Ljava/lang/String;

.field private mIcon:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;

.field private mIntent:Landroid/content/Intent;

.field private mIsDummy:Z

.field private mItemPadding:I

.field private mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 12
    .parameter
    .parameter "context"
    .parameter "cn"
    .parameter "isNotDummy"

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->this$0:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    .line 718
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 720
    if-nez p4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIsDummy:Z

    .line 722
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 723
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v0, 0x1090060

    const/4 v1, 0x1

    invoke-virtual {v9, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 725
    const v0, 0x102030c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 726
    .local v10, mRoot:Landroid/widget/LinearLayout;
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;

    .line 728
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mItemPadding:I

    .line 734
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    #setter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconHeight:I
    invoke-static {p1, v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$1102(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;I)I

    move-result v0

    #setter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconWidth:I
    invoke-static {p1, v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$1002(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;I)I

    .line 738
    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->DBG:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$500(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$100(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIconWidth ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIconWidth:I
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$1000(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_0
    #calls: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    invoke-static {p1, p3}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$1200(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 742
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_3

    .line 743
    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->DBG:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$500(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$100(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "There\'s no activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 806
    :goto_1
    return-void

    .line 720
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    .end local v10           #mRoot:Landroid/widget/LinearLayout;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 750
    .restart local v9       #inflater:Landroid/view/LayoutInflater;
    .restart local v10       #mRoot:Landroid/widget/LinearLayout;
    :cond_3
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mPkgName:Ljava/lang/String;

    .line 751
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mClsName:Ljava/lang/String;

    .line 753
    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$1300(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 754
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$1400()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$1500()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" and class=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 755
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 756
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 757
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 758
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->setBadgeCount(I)V

    .line 759
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 762
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 768
    .end local v7           #c:Landroid/database/Cursor;
    :cond_5
    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$1600(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 769
    .local v11, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v11, :cond_7

    .line 770
    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->DBG:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$500(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 771
    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$100(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "There\'s no activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 775
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;

    invoke-virtual {p1, v11}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #calls: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v1, p2}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$1700(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 776
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 779
    :try_start_0
    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$1600(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 781
    .local v6, aInfo:Landroid/content/pm/ActivityInfo;
    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mIsTouchExplorationEnabled:Z
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$1800(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$1600(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mContext:Landroid/content/Context;

    const v2, 0x1040678

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    .end local v6           #aInfo:Landroid/content/pm/ActivityInfo;
    :goto_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->setFocusableInTouchMode(Z)V

    goto/16 :goto_1

    .line 784
    .restart local v6       #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_8
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->access$1600(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mContext:Landroid/content/Context;

    const v2, 0x1040679

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 787
    .end local v6           #aInfo:Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v8

    .line 789
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mClsName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPadding()I
    .locals 1

    .prologue
    .line 809
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mItemPadding:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public isDummy()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIsDummy:Z

    return v0
.end method

.method public onPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->onPressed(Z)V

    .line 818
    return-void
.end method

.method public refreshBadgeCount()V
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->postInvalidate()V

    .line 839
    return-void
.end method

.method public setBadgeCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->setBadgeCount(I)V

    .line 835
    return-void
.end method

.method public setOpacity(D)V
    .locals 1
    .parameter "distanceRatio"

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutItem;->mIcon:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget$ShortcutImageView;->setDistanceRatio(D)V

    .line 822
    return-void
.end method
