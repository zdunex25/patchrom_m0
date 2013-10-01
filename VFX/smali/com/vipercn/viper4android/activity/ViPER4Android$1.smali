.class Lcom/vipercn/viper4android/activity/ViPER4Android$1;
.super Landroid/os/Handler;
.source "ViPER4Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android/activity/ViPER4Android;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    .line 310
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1;)Lcom/vipercn/viper4android/activity/ViPER4Android;
    .locals 1
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 317
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    const v3, 0xa00a

    if-ne v2, v3, :cond_0

    .line 319
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    .local v1, mUpdateDrv:Landroid/app/AlertDialog$Builder;
    const-string v2, "ViPER4Android"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 321
    iget-object v2, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    invoke-virtual {v2}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 322
    iget-object v2, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    invoke-virtual {v2}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;

    invoke-direct {v3, p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 358
    iget-object v2, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    invoke-virtual {v2}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vipercn/viper4android/activity/ViPER4Android$1$2;

    invoke-direct {v3, p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$1$2;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 363
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 365
    .end local v1           #mUpdateDrv:Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Ljava/lang/Exception;
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
