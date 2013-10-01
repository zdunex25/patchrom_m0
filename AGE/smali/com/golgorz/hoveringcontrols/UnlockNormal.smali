.class public Lcom/golgorz/hoveringcontrols/UnlockNormal;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x320

    iput v0, p0, Lcom/golgorz/hoveringcontrols/UnlockNormal;->b:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/UnlockNormal;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x680080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/UnlockNormal;->a:Landroid/os/Handler;

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/UnlockNormal;->a:Landroid/os/Handler;

    new-instance v1, Lcom/golgorz/hoveringcontrols/as;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/as;-><init>(Lcom/golgorz/hoveringcontrols/UnlockNormal;)V

    iget v2, p0, Lcom/golgorz/hoveringcontrols/UnlockNormal;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
