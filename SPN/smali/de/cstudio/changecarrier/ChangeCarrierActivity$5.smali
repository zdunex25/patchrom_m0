.class Lde/cstudio/changecarrier/ChangeCarrierActivity$5;
.super Lcom/stericson/RootTools/RootTools$Result;
.source "ChangeCarrierActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/cstudio/changecarrier/ChangeCarrierActivity;->changeCarrier(Ljava/lang/String;)V
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
    iput-object p1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$5;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    .line 347
    invoke-direct {p0}, Lcom/stericson/RootTools/RootTools$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 354
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 356
    return-void
.end method

.method public process(Ljava/lang/String;)V
    .locals 2
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 350
    const-string v0, "/system/etc/spn-conf.xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$5;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    const/4 v1, 0x1

    #setter for: Lde/cstudio/changecarrier/ChangeCarrierActivity;->isSpnConf:Z
    invoke-static {v0, v1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->access$6(Lde/cstudio/changecarrier/ChangeCarrierActivity;Z)V

    .line 352
    :cond_0
    return-void
.end method
