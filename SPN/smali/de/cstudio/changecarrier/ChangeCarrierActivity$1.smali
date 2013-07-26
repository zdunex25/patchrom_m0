.class Lde/cstudio/changecarrier/ChangeCarrierActivity$1;
.super Ljava/lang/Object;
.source "ChangeCarrierActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$1;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "arg0"
    .parameter "isChecked"

    .prologue
    .line 103
    if-eqz p2, :cond_0

    .line 104
    iget-object v0, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$1;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    const/4 v1, 0x1

    #setter for: Lde/cstudio/changecarrier/ChangeCarrierActivity;->isBackupChecked:Z
    invoke-static {v0, v1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->access$0(Lde/cstudio/changecarrier/ChangeCarrierActivity;Z)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$1;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    const/4 v1, 0x0

    #setter for: Lde/cstudio/changecarrier/ChangeCarrierActivity;->isBackupChecked:Z
    invoke-static {v0, v1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->access$0(Lde/cstudio/changecarrier/ChangeCarrierActivity;Z)V

    goto :goto_0
.end method
