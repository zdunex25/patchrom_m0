.class public Lcom/golgorz/hoveringcontrols/DeviceAdminSample;
.super Landroid/app/admin/DeviceAdminReceiver;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "password_quality"

    sput-object v0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample;->a:Ljava/lang/String;

    const-string v0, "password_length"

    sput-object v0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample;->b:Ljava/lang/String;

    const-string v0, "max_failed_pw"

    sput-object v0, Lcom/golgorz/hoveringcontrols/DeviceAdminSample;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "This is an optional message to warn the user about disabling."

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Sample Device Admin: disabled"

    invoke-virtual {p0, p1, v0}, Lcom/golgorz/hoveringcontrols/DeviceAdminSample;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Sample Device Admin: enabled"

    invoke-virtual {p0, p1, v0}, Lcom/golgorz/hoveringcontrols/DeviceAdminSample;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Sample Device Admin: pw changed"

    invoke-virtual {p0, p1, v0}, Lcom/golgorz/hoveringcontrols/DeviceAdminSample;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Sample Device Admin: pw failed"

    invoke-virtual {p0, p1, v0}, Lcom/golgorz/hoveringcontrols/DeviceAdminSample;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Sample Device Admin: pw succeeded"

    invoke-virtual {p0, p1, v0}, Lcom/golgorz/hoveringcontrols/DeviceAdminSample;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
