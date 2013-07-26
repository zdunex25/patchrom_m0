.class Lde/cstudio/changecarrier/ChangeCarrierActivity$2;
.super Ljava/lang/Object;
.source "ChangeCarrierActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/cstudio/changecarrier/ChangeCarrierActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;


# direct methods
.method constructor <init>(Lde/cstudio/changecarrier/ChangeCarrierActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$2;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 123
    iget-object v1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$2;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, newCarrier:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$2;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    #calls: Lde/cstudio/changecarrier/ChangeCarrierActivity;->changeCarrier(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->access$1(Lde/cstudio/changecarrier/ChangeCarrierActivity;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$2;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    const v2, 0x7f060019

    #calls: Lde/cstudio/changecarrier/ChangeCarrierActivity;->Toasty(I)V
    invoke-static {v1, v2}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->access$2(Lde/cstudio/changecarrier/ChangeCarrierActivity;I)V

    goto :goto_0
.end method
