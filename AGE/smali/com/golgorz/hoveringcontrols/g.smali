.class Lcom/golgorz/hoveringcontrols/g;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/e;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/e;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/g;->a:Lcom/golgorz/hoveringcontrols/e;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/golgorz/hoveringcontrols/h;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/g;->a:Lcom/golgorz/hoveringcontrols/e;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/e;->a(Lcom/golgorz/hoveringcontrols/e;)Lcom/golgorz/hoveringcontrols/ListApps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/ListApps;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/golgorz/hoveringcontrols/h;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/g;->a:Lcom/golgorz/hoveringcontrols/e;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/e;->a(Lcom/golgorz/hoveringcontrols/e;)Lcom/golgorz/hoveringcontrols/ListApps;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/golgorz/hoveringcontrols/h;-><init>(Lcom/golgorz/hoveringcontrols/ListApps;)V

    const v0, 0x7f0b0026

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/golgorz/hoveringcontrols/h;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b0027

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/golgorz/hoveringcontrols/h;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v1, Lcom/golgorz/hoveringcontrols/h;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/g;->a:Lcom/golgorz/hoveringcontrols/e;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/e;->a(Lcom/golgorz/hoveringcontrols/e;)Lcom/golgorz/hoveringcontrols/ListApps;

    move-result-object v0

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/ListApps;->a(Lcom/golgorz/hoveringcontrols/ListApps;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/g;->a:Lcom/golgorz/hoveringcontrols/e;

    invoke-static {v3}, Lcom/golgorz/hoveringcontrols/e;->a(Lcom/golgorz/hoveringcontrols/e;)Lcom/golgorz/hoveringcontrols/ListApps;

    move-result-object v3

    invoke-virtual {v3}, Lcom/golgorz/hoveringcontrols/ListApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/g;->a:Lcom/golgorz/hoveringcontrols/e;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/e;->a(Lcom/golgorz/hoveringcontrols/e;)Lcom/golgorz/hoveringcontrols/ListApps;

    move-result-object v0

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/ListApps;->c(Lcom/golgorz/hoveringcontrols/ListApps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, v1, Lcom/golgorz/hoveringcontrols/h;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/g;->a:Lcom/golgorz/hoveringcontrols/e;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/e;->a(Lcom/golgorz/hoveringcontrols/e;)Lcom/golgorz/hoveringcontrols/ListApps;

    move-result-object v0

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/ListApps;->c(Lcom/golgorz/hoveringcontrols/ListApps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/golgorz/hoveringcontrols/h;

    move-object v1, v0

    goto :goto_0
.end method
