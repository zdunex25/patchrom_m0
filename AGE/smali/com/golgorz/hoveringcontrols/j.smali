.class Lcom/golgorz/hoveringcontrols/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/i;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/i;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/j;->a:Lcom/golgorz/hoveringcontrols/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/j;->a:Lcom/golgorz/hoveringcontrols/i;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/i;->a(Lcom/golgorz/hoveringcontrols/i;)Lcom/golgorz/hoveringcontrols/ListVideoPlayers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/ListVideoPlayers;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/j;->a:Lcom/golgorz/hoveringcontrols/i;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/i;->a(Lcom/golgorz/hoveringcontrols/i;)Lcom/golgorz/hoveringcontrols/ListVideoPlayers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/golgorz/hoveringcontrols/ListVideoPlayers;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/golgorz/hoveringcontrols/j;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
