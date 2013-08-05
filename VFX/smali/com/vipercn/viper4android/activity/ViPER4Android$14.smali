.class Lcom/vipercn/viper4android/activity/ViPER4Android$14;
.super Landroid/app/DialogFragment;
.source "ViPER4Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android/activity/ViPER4Android;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private editProfileName:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$14;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    .line 946
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 948
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$14;->editProfileName:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$14;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 948
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$14;->editProfileName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vipercn/viper4android/activity/ViPER4Android$14;)Lcom/vipercn/viper4android/activity/ViPER4Android;
    .locals 1
    .parameter

    .prologue
    .line 946
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$14;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "state"

    .prologue
    .line 953
    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 955
    .local v2, v:Landroid/view/View;
    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$14;->editProfileName:Landroid/widget/EditText;

    .line 956
    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 958
    .local v1, btnSaveProfile:Landroid/widget/Button;
    new-instance v3, Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;

    invoke-direct {v3, p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android$14;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1050
    const v3, 0x7f080007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1051
    .local v0, btnCancelProfile:Landroid/widget/Button;
    new-instance v3, Lcom/vipercn/viper4android/activity/ViPER4Android$14$2;

    invoke-direct {v3, p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$14$2;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android$14;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1054
    return-object v2
.end method
