.class public Lcom/android/OriginalSettings/OwnerInfoSettings;
.super Landroid/app/DialogFragment;
.source "OwnerInfoSettings.java"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mEditText:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/OwnerInfoSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/OwnerInfoSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->showInputMethod()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v6, 0x41

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 77
    .local v2, res:Landroid/content/ContentResolver;
    const-string v3, "lock_screen_owner_info"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, info:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_0

    .line 79
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 81
    :cond_0
    const-string v3, "lock_screen_owner_info_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, enabled:I
    iget-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v6, 0x7f0b0162

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    .line 84
    iget-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v6, 0x7f0b0161

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    .line 85
    iget-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    if-eqz v1, :cond_1

    .line 87
    iget-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 88
    :cond_1
    iget-object v6, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 89
    iget-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 90
    iget-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/OriginalSettings/OwnerInfoSettings$3;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/OwnerInfoSettings$3;-><init>(Lcom/android/OriginalSettings/OwnerInfoSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    invoke-direct {p0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->showInputMethod()V

    .line 98
    return-void

    :cond_2
    move v3, v5

    .line 88
    goto :goto_0

    :cond_3
    move v4, v5

    .line 89
    goto :goto_1
.end method

.method static newInstance(I)Lcom/android/OriginalSettings/OwnerInfoSettings;
    .locals 3
    .parameter "title"

    .prologue
    .line 42
    new-instance v1, Lcom/android/OriginalSettings/OwnerInfoSettings;

    invoke-direct {v1}, Lcom/android/OriginalSettings/OwnerInfoSettings;-><init>()V

    .line 43
    .local v1, frag:Lcom/android/OriginalSettings/OwnerInfoSettings;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v1
.end method

.method private showInputMethod()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/OriginalSettings/OwnerInfoSettings$4;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/OwnerInfoSettings$4;-><init>(Lcom/android/OriginalSettings/OwnerInfoSettings;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04008c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->initView(Landroid/view/View;)V

    .line 55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/OriginalSettings/OwnerInfoSettings$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/OwnerInfoSettings$2;-><init>(Lcom/android/OriginalSettings/OwnerInfoSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/OriginalSettings/OwnerInfoSettings$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/OwnerInfoSettings$1;-><init>(Lcom/android/OriginalSettings/OwnerInfoSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 121
    const-string v1, "OwnerInfoSettings"

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 123
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 124
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 125
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 116
    return-void
.end method

.method saveToDb()V
    .locals 5

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/OriginalSettings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 130
    .local v2, res:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, info:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/OriginalSettings/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 132
    .local v1, isChecked:Z
    const-string v3, "lock_screen_owner_info"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    const-string v4, "lock_screen_owner_info_enabled"

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    return-void

    .line 133
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
