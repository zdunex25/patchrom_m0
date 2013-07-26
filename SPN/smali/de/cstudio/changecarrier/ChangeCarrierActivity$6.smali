.class Lde/cstudio/changecarrier/ChangeCarrierActivity$6;
.super Ljava/lang/Object;
.source "ChangeCarrierActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/cstudio/changecarrier/ChangeCarrierActivity;->RebootDialog()V
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
    iput-object p1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$6;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 475
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    :try_start_0
    const-string v0, "reboot"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    goto :goto_0
.end method
