.class Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10$1;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 908
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10$1;->this$1:Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;
    invoke-static {v0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;->access$0(Lcom/vipercn/viper4android_v2/activity/ViPER4Android$10;)Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->finish()V

    return-void
.end method
