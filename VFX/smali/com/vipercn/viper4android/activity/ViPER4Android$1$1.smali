.class Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android/activity/ViPER4Android$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$1;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android/activity/ViPER4Android$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$1;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;)Lcom/vipercn/viper4android/activity/ViPER4Android$1;
    .locals 1
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$1;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 328
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$1;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$1;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;
    invoke-static {v1}, Lcom/vipercn/viper4android/activity/ViPER4Android$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$1;)Lcom/vipercn/viper4android/activity/ViPER4Android;

    move-result-object v1

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 329
    const v1, 0x7f060098

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 330
    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 331
    const/high16 v1, 0x7f05

    new-instance v2, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1$1;

    invoke-direct {v2, p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1$1;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 354
    const v1, 0x7f060097

    new-instance v2, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1$2;

    invoke-direct {v2, p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$1$1$2;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android$1$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 356
    return-void
.end method
