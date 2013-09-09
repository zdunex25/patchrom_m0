.class Lcom/golgorz/hoveringcontrols/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/Settings;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/Settings;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/ar;->a:Lcom/golgorz/hoveringcontrols/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ar;->a:Lcom/golgorz/hoveringcontrols/Settings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/golgorz/hoveringcontrols/Settings;->a(Lcom/golgorz/hoveringcontrols/Settings;Z)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ar;->a:Lcom/golgorz/hoveringcontrols/Settings;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/ar;->a:Lcom/golgorz/hoveringcontrols/Settings;

    invoke-virtual {v2}, Lcom/golgorz/hoveringcontrols/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/golgorz/hoveringcontrols/ListVideoPlayers;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/golgorz/hoveringcontrols/Settings;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
