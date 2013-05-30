.class Lcom/android/OriginalSettings/flipfont/FontListPreference$1;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/flipfont/FontListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 184
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    iput-object v1, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    #setter for: Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->access$002(Lcom/android/OriginalSettings/flipfont/FontListPreference;Lcom/android/OriginalSettings/flipfont/FontListAdapter;)Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    .line 188
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    const/4 v1, 0x1

    #setter for: Lcom/android/OriginalSettings/flipfont/FontListPreference;->mBuyButtonClicked:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->access$102(Lcom/android/OriginalSettings/flipfont/FontListPreference;Z)Z

    .line 189
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->restartLater()V

    .line 190
    return-void
.end method
