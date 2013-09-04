.class Lcom/golgorz/hoveringcontrols/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/MainActivity;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/o;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/o;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/MainActivity;->finish()V

    return-void
.end method
