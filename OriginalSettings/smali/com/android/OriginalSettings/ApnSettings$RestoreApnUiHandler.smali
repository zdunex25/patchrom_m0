.class Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/OriginalSettings/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/ApnSettings;Lcom/android/OriginalSettings/ApnSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/OriginalSettings/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 583
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 600
    :goto_0
    return-void

    .line 585
    :pswitch_0
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/OriginalSettings/ApnSettings;

    #calls: Lcom/android/OriginalSettings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/OriginalSettings/ApnSettings;->access$200(Lcom/android/OriginalSettings/ApnSettings;)V

    .line 586
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/OriginalSettings/ApnSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 587
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/OriginalSettings/ApnSettings;->access$102(Z)Z

    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/OriginalSettings/ApnSettings;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/ApnSettings;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :goto_1
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/OriginalSettings/ApnSettings;

    iget-object v2, p0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/OriginalSettings/ApnSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "ApnSettings"

    const-string v2, " dialog(DIALOG_RESTORE_DEFAULTAPN) is dismissed already"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 583
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
