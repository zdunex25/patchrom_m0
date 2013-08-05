.class Lcom/vipercn/viper4android/activity/ViPER4Android$5;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android/activity/ViPER4Android;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$5;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 518
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 513
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "idx"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$5;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #setter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mCurrentPage:I
    invoke-static {v0, p1}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$1(Lcom/vipercn/viper4android/activity/ViPER4Android;I)V

    .line 507
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$5;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    iget-object v0, v0, Lcom/vipercn/viper4android/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$5;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    iget-object v1, v1, Lcom/vipercn/viper4android/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 508
    return-void
.end method
