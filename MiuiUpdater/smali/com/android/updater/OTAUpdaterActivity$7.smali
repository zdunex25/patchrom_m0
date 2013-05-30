.class Lcom/android/updater/OTAUpdaterActivity$7;
.super Ljava/lang/Object;
.source "OTAUpdaterActivity.java"

# interfaces
.implements Lcom/android/updater/FetchRomInfoTask$RomInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/OTAUpdaterActivity;->checkForRomUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/OTAUpdaterActivity;


# direct methods
.method constructor <init>(Lcom/android/updater/OTAUpdaterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/updater/OTAUpdaterActivity$7;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 5
    .parameter "error"

    .prologue
    const/4 v4, 0x0

    .line 356
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$7;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/updater/OTAUpdaterActivity;->fetchTask:Lcom/android/updater/FetchRomInfoTask;
    invoke-static {v0, v1}, Lcom/android/updater/OTAUpdaterActivity;->access$6(Lcom/android/updater/OTAUpdaterActivity;Lcom/android/updater/FetchRomInfoTask;)V

    .line 357
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$7;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    #getter for: Lcom/android/updater/OTAUpdaterActivity;->availUpdatePref:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/updater/OTAUpdaterActivity;->access$7(Lcom/android/updater/OTAUpdaterActivity;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/updater/OTAUpdaterActivity$7;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    const v2, 0x7f06003c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/updater/OTAUpdaterActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$7;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    invoke-static {v0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 359
    return-void
.end method

.method public onLoaded(Lcom/android/updater/RomInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 343
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$7;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/updater/OTAUpdaterActivity;->fetchTask:Lcom/android/updater/FetchRomInfoTask;
    invoke-static {v0, v1}, Lcom/android/updater/OTAUpdaterActivity;->access$6(Lcom/android/updater/OTAUpdaterActivity;Lcom/android/updater/FetchRomInfoTask;)V

    .line 344
    if-nez p1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$7;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    #getter for: Lcom/android/updater/OTAUpdaterActivity;->availUpdatePref:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/updater/OTAUpdaterActivity;->access$7(Lcom/android/updater/OTAUpdaterActivity;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/updater/OTAUpdaterActivity$7;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    const v2, 0x7f06003c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unknown error"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/updater/OTAUpdaterActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$7;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    const v1, 0x7f060028

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 353
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-static {p1}, Lcom/android/updater/Utils;->isUpdate(Lcom/android/updater/RomInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$7;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    #calls: Lcom/android/updater/OTAUpdaterActivity;->showUpdateDialog(Lcom/android/updater/RomInfo;)V
    invoke-static {v0, p1}, Lcom/android/updater/OTAUpdaterActivity;->access$4(Lcom/android/updater/OTAUpdaterActivity;Lcom/android/updater/RomInfo;)V

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$7;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    #getter for: Lcom/android/updater/OTAUpdaterActivity;->availUpdatePref:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/updater/OTAUpdaterActivity;->access$7(Lcom/android/updater/OTAUpdaterActivity;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f06003b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 351
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$7;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    const v1, 0x7f060027

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onStartLoading()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method
