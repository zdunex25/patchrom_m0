.class Lcom/golgorz/hoveringcontrols/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/e;->a:Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.DEVICE_ADMIN"

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/e;->a:Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;

    iget-object v2, v2, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.app.extra.ADD_EXPLANATION"

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/e;->a:Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;

    const v3, 0x7f07005a

    invoke-virtual {v2, v3}, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/e;->a:Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
