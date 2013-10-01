.class public Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/app/admin/DevicePolicyManager;

.field b:Landroid/app/ActivityManager;

.field c:Landroid/content/ComponentName;

.field d:Landroid/widget/Button;

.field e:Landroid/widget/Button;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/golgorz/hoveringcontrols/e;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/e;-><init>(Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->f:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/golgorz/hoveringcontrols/f;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/f;-><init>(Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->g:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->a:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->e:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->d:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "DeviceAdminSample"

    const-string v1, "Admin enabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "DeviceAdminSample"

    const-string v1, "Admin enable FAILED!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->a:Landroid/app/admin/DevicePolicyManager;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->b:Landroid/app/ActivityManager;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/golgorz/hoveringcontrols/DeviceAdminSample;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->c:Landroid/content/ComponentName;

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->setContentView(I)V

    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/DeviceAdminSample$Controller;->a()V

    return-void
.end method
