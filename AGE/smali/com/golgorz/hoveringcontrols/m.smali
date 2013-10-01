.class Lcom/golgorz/hoveringcontrols/m;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/k;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/k;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/m;->a:Lcom/golgorz/hoveringcontrols/k;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/golgorz/hoveringcontrols/n;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/m;->a:Lcom/golgorz/hoveringcontrols/k;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/k;->a(Lcom/golgorz/hoveringcontrols/k;)Lcom/golgorz/hoveringcontrols/ListVideoPlayers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/ListVideoPlayers;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/golgorz/hoveringcontrols/n;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/m;->a:Lcom/golgorz/hoveringcontrols/k;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/k;->a(Lcom/golgorz/hoveringcontrols/k;)Lcom/golgorz/hoveringcontrols/ListVideoPlayers;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/golgorz/hoveringcontrols/n;-><init>(Lcom/golgorz/hoveringcontrols/ListVideoPlayers;)V

    const v0, 0x7f0b0031

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/golgorz/hoveringcontrols/n;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b0032

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/golgorz/hoveringcontrols/n;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v1, Lcom/golgorz/hoveringcontrols/n;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/m;->a:Lcom/golgorz/hoveringcontrols/k;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/k;->a(Lcom/golgorz/hoveringcontrols/k;)Lcom/golgorz/hoveringcontrols/ListVideoPlayers;

    move-result-object v0

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/ListVideoPlayers;->a(Lcom/golgorz/hoveringcontrols/ListVideoPlayers;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/m;->a:Lcom/golgorz/hoveringcontrols/k;

    invoke-static {v3}, Lcom/golgorz/hoveringcontrols/k;->a(Lcom/golgorz/hoveringcontrols/k;)Lcom/golgorz/hoveringcontrols/ListVideoPlayers;

    move-result-object v3

    invoke-virtual {v3}, Lcom/golgorz/hoveringcontrols/ListVideoPlayers;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/m;->a:Lcom/golgorz/hoveringcontrols/k;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/k;->a(Lcom/golgorz/hoveringcontrols/k;)Lcom/golgorz/hoveringcontrols/ListVideoPlayers;

    move-result-object v0

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/ListVideoPlayers;->b(Lcom/golgorz/hoveringcontrols/ListVideoPlayers;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, v1, Lcom/golgorz/hoveringcontrols/n;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/m;->a:Lcom/golgorz/hoveringcontrols/k;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/k;->a(Lcom/golgorz/hoveringcontrols/k;)Lcom/golgorz/hoveringcontrols/ListVideoPlayers;

    move-result-object v0

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/ListVideoPlayers;->b(Lcom/golgorz/hoveringcontrols/ListVideoPlayers;)Ljava/util/ArrayList;

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

    check-cast v0, Lcom/golgorz/hoveringcontrols/n;

    move-object v1, v0

    goto :goto_0
.end method
