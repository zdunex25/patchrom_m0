.class Lcom/golgorz/hoveringcontrols/g;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Landroid/widget/ArrayAdapter;

.field final synthetic b:Lcom/golgorz/hoveringcontrols/ListApps;


# direct methods
.method private constructor <init>(Lcom/golgorz/hoveringcontrols/ListApps;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/g;->b:Lcom/golgorz/hoveringcontrols/ListApps;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/golgorz/hoveringcontrols/ListApps;Lcom/golgorz/hoveringcontrols/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/golgorz/hoveringcontrols/g;-><init>(Lcom/golgorz/hoveringcontrols/ListApps;)V

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/g;)Lcom/golgorz/hoveringcontrols/ListApps;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/g;->b:Lcom/golgorz/hoveringcontrols/ListApps;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/g;->b:Lcom/golgorz/hoveringcontrols/ListApps;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/g;->b:Lcom/golgorz/hoveringcontrols/ListApps;

    invoke-virtual {v3}, Lcom/golgorz/hoveringcontrols/ListApps;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/golgorz/hoveringcontrols/ListApps;->a(Lcom/golgorz/hoveringcontrols/ListApps;Ljava/util/List;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/g;->b:Lcom/golgorz/hoveringcontrols/ListApps;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/g;->b:Lcom/golgorz/hoveringcontrols/ListApps;

    invoke-virtual {v3}, Lcom/golgorz/hoveringcontrols/ListApps;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/golgorz/hoveringcontrols/ListApps;->b(Lcom/golgorz/hoveringcontrols/ListApps;Ljava/util/List;)V

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/g;->b:Lcom/golgorz/hoveringcontrols/ListApps;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/ListApps;->a(Lcom/golgorz/hoveringcontrols/ListApps;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/g;->b:Lcom/golgorz/hoveringcontrols/ListApps;

    invoke-static {v2}, Lcom/golgorz/hoveringcontrols/ListApps;->b(Lcom/golgorz/hoveringcontrols/ListApps;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/g;->b:Lcom/golgorz/hoveringcontrols/ListApps;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/ListApps;->a(Lcom/golgorz/hoveringcontrols/ListApps;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/golgorz/hoveringcontrols/h;

    invoke-direct {v2, p0}, Lcom/golgorz/hoveringcontrols/h;-><init>(Lcom/golgorz/hoveringcontrols/g;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/g;->b:Lcom/golgorz/hoveringcontrols/ListApps;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/ListApps;->a(Lcom/golgorz/hoveringcontrols/ListApps;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v5

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/g;->b:Lcom/golgorz/hoveringcontrols/ListApps;

    invoke-static {v3}, Lcom/golgorz/hoveringcontrols/ListApps;->c(Lcom/golgorz/hoveringcontrols/ListApps;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/golgorz/hoveringcontrols/g;->b:Lcom/golgorz/hoveringcontrols/ListApps;

    invoke-virtual {v4}, Lcom/golgorz/hoveringcontrols/ListApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 4

    new-instance v0, Lcom/golgorz/hoveringcontrols/i;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/g;->b:Lcom/golgorz/hoveringcontrols/ListApps;

    invoke-virtual {v1}, Lcom/golgorz/hoveringcontrols/ListApps;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030009

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/g;->b:Lcom/golgorz/hoveringcontrols/ListApps;

    invoke-static {v3}, Lcom/golgorz/hoveringcontrols/ListApps;->a(Lcom/golgorz/hoveringcontrols/ListApps;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/golgorz/hoveringcontrols/i;-><init>(Lcom/golgorz/hoveringcontrols/g;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/g;->a:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/g;->b:Lcom/golgorz/hoveringcontrols/ListApps;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/g;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/golgorz/hoveringcontrols/ListApps;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/golgorz/hoveringcontrols/g;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/golgorz/hoveringcontrols/g;->a(Ljava/lang/Integer;)V

    return-void
.end method
