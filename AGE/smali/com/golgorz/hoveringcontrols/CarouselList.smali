.class public Lcom/golgorz/hoveringcontrols/CarouselList;
.super Landroid/app/ListActivity;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Ljava/util/ArrayList;

.field c:Ljava/io/File;

.field d:Ljava/io/File;

.field private e:Ljava/util/List;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/CarouselList;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/CarouselList;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lcom/golgorz/hoveringcontrols/CarouselList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->f:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public cerrar(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/CarouselList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/golgorz/hoveringcontrols/MyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "carouselupdate"

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/CarouselList;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/CarouselList;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/CarouselList;->setContentView(I)V

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/CarouselList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->f:Ljava/util/ArrayList;

    new-instance v0, Lcom/golgorz/hoveringcontrols/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/golgorz/hoveringcontrols/a;-><init>(Lcom/golgorz/hoveringcontrols/CarouselList;Lcom/golgorz/hoveringcontrols/a;)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/golgorz/hoveringcontrols/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Ljava/io/File;

    const-string v1, "data"

    invoke-virtual {p0, v1, v3}, Lcom/golgorz/hoveringcontrols/CarouselList;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "carousel"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->c:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "data"

    invoke-virtual {p0, v1, v3}, Lcom/golgorz/hoveringcontrols/CarouselList;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "carouselname"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->d:Ljava/io/File;

    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->c:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->d:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->b:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->b:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->g:Ljava/lang/String;

    const-string v1, "carousel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0033

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->e:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->e:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/CarouselList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->c:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->d:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_2
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->e:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/CarouselList;->e:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected onPause()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/CarouselList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/golgorz/hoveringcontrols/MyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "carouselupdate"

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/CarouselList;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    return-void
.end method
