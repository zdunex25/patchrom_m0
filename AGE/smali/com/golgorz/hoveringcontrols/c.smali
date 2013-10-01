.class Lcom/golgorz/hoveringcontrols/c;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/a;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/a;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/c;->a:Lcom/golgorz/hoveringcontrols/a;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/golgorz/hoveringcontrols/d;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/c;->a:Lcom/golgorz/hoveringcontrols/a;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/a;->a(Lcom/golgorz/hoveringcontrols/a;)Lcom/golgorz/hoveringcontrols/CarouselList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/CarouselList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/golgorz/hoveringcontrols/d;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/c;->a:Lcom/golgorz/hoveringcontrols/a;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/a;->a(Lcom/golgorz/hoveringcontrols/a;)Lcom/golgorz/hoveringcontrols/CarouselList;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/golgorz/hoveringcontrols/d;-><init>(Lcom/golgorz/hoveringcontrols/CarouselList;)V

    const v0, 0x7f0b0031

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/golgorz/hoveringcontrols/d;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b0033

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/golgorz/hoveringcontrols/d;->c:Landroid/widget/CheckBox;

    const v0, 0x7f0b0032

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/golgorz/hoveringcontrols/d;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/c;->a:Lcom/golgorz/hoveringcontrols/a;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/a;->a(Lcom/golgorz/hoveringcontrols/a;)Lcom/golgorz/hoveringcontrols/CarouselList;

    move-result-object v0

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/CarouselList;->a(Lcom/golgorz/hoveringcontrols/CarouselList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/c;->a:Lcom/golgorz/hoveringcontrols/a;

    invoke-static {v2}, Lcom/golgorz/hoveringcontrols/a;->a(Lcom/golgorz/hoveringcontrols/a;)Lcom/golgorz/hoveringcontrols/CarouselList;

    move-result-object v2

    iget-object v2, v2, Lcom/golgorz/hoveringcontrols/CarouselList;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/golgorz/hoveringcontrols/d;->c:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    iget-object v2, v1, Lcom/golgorz/hoveringcontrols/d;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/c;->a:Lcom/golgorz/hoveringcontrols/a;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/a;->a(Lcom/golgorz/hoveringcontrols/a;)Lcom/golgorz/hoveringcontrols/CarouselList;

    move-result-object v0

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/CarouselList;->a(Lcom/golgorz/hoveringcontrols/CarouselList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/c;->a:Lcom/golgorz/hoveringcontrols/a;

    invoke-static {v3}, Lcom/golgorz/hoveringcontrols/a;->a(Lcom/golgorz/hoveringcontrols/a;)Lcom/golgorz/hoveringcontrols/CarouselList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/golgorz/hoveringcontrols/CarouselList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/c;->a:Lcom/golgorz/hoveringcontrols/a;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/a;->a(Lcom/golgorz/hoveringcontrols/a;)Lcom/golgorz/hoveringcontrols/CarouselList;

    move-result-object v0

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/CarouselList;->b(Lcom/golgorz/hoveringcontrols/CarouselList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, v1, Lcom/golgorz/hoveringcontrols/d;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/c;->a:Lcom/golgorz/hoveringcontrols/a;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/a;->a(Lcom/golgorz/hoveringcontrols/a;)Lcom/golgorz/hoveringcontrols/CarouselList;

    move-result-object v0

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/CarouselList;->b(Lcom/golgorz/hoveringcontrols/CarouselList;)Ljava/util/ArrayList;

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

    check-cast v0, Lcom/golgorz/hoveringcontrols/d;

    move-object v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/golgorz/hoveringcontrols/d;->c:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
