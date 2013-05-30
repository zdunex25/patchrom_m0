.class Lcom/android/OriginalSettings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;


# instance fields
.field private final mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

.field private mController:Lcom/android/OriginalSettings/wifi/WifiConfigController;

.field private final mEdit:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mRetry:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "retry"

    .prologue
    .line 43
    const v0, 0x7f110027

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    iput-boolean p4, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mEdit:Z

    .line 45
    iput-boolean p5, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mRetry:Z

    .line 46
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    iput-object p3, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 48
    return-void
.end method


# virtual methods
.method public getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mController:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 74
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040103

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 60
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mEdit:Z

    iget-boolean v5, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mRetry:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wifi/WifiConfigController;-><init>(Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mController:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    .line 61
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mController:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 65
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 99
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 100
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 94
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 95
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 89
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/OriginalSettings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 90
    return-void
.end method
