.class Lcom/golgorz/hoveringcontrols/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/MainActivity;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/p;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/p;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    const-class v2, Lcom/golgorz/hoveringcontrols/DeviceAdminSample;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.app.extra.ADD_EXPLANATION"

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/p;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    const v3, 0x7f07005a

    invoke-virtual {v2, v3}, Lcom/golgorz/hoveringcontrols/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/p;->a:Lcom/golgorz/hoveringcontrols/MainActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/golgorz/hoveringcontrols/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
