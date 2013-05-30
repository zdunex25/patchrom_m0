.class Lcom/android/OriginalSettings/personalvibration/PersonalVibration$2;
.super Ljava/lang/Object;
.source "PersonalVibration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/personalvibration/PersonalVibration;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$2;->this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

    iput-object p2, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$2;->this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

    #getter for: Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->access$100(Lcom/android/OriginalSettings/personalvibration/PersonalVibration;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 307
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$2;->this$0:Lcom/android/OriginalSettings/personalvibration/PersonalVibration;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    .line 308
    return-void
.end method
