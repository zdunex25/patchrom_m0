.class Lcom/golgorz/hoveringcontrols/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/f;->a:Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/f;->a:Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;

    iget-object v0, v0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->a:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/f;->a:Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;

    iget-object v1, v1, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/f;->a:Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->a()V

    return-void
.end method
