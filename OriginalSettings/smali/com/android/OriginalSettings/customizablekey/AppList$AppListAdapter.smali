.class public Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/customizablekey/AppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/customizablekey/AppList;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/customizablekey/AppList;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p5, objects:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->this$0:Lcom/android/OriginalSettings/customizablekey/AppList;

    .line 97
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 99
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 102
    iget-object v3, p0, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->this$0:Lcom/android/OriginalSettings/customizablekey/AppList;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/customizablekey/AppList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 103
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040074

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 105
    const v3, 0x7f0b0137

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    .local v1, appName:Landroid/widget/TextView;
    const v3, 0x7f0b007e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 108
    .local v0, appIcon:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->this$0:Lcom/android/OriginalSettings/customizablekey/AppList;

    #getter for: Lcom/android/OriginalSettings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/OriginalSettings/customizablekey/AppList;->access$000(Lcom/android/OriginalSettings/customizablekey/AppList;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->this$0:Lcom/android/OriginalSettings/customizablekey/AppList;

    #getter for: Lcom/android/OriginalSettings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/OriginalSettings/customizablekey/AppList;->access$000(Lcom/android/OriginalSettings/customizablekey/AppList;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->this$0:Lcom/android/OriginalSettings/customizablekey/AppList;

    #getter for: Lcom/android/OriginalSettings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/OriginalSettings/customizablekey/AppList;->access$000(Lcom/android/OriginalSettings/customizablekey/AppList;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/OriginalSettings/customizablekey/AppList$AppListAdapter;->this$0:Lcom/android/OriginalSettings/customizablekey/AppList;

    #getter for: Lcom/android/OriginalSettings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/OriginalSettings/customizablekey/AppList;->access$000(Lcom/android/OriginalSettings/customizablekey/AppList;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_1
    return-object p2
.end method
