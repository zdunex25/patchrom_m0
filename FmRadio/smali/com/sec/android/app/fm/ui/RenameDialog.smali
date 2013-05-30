.class public Lcom/sec/android/app/fm/ui/RenameDialog;
.super Landroid/app/AlertDialog;
.source "RenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBeforeRename:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/ui/RenameDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v3, ""

    iput-object v3, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mBeforeRename:Ljava/lang/String;

    .line 61
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_0

    .line 62
    const-string v3, ""

    invoke-static {p1, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mToast:Landroid/widget/Toast;

    .line 65
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030001

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, layout:Landroid/view/View;
    const v3, 0x7f070003

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 67
    .local v2, textView:Landroid/widget/TextView;
    const v3, 0x7f070004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    .line 68
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    const v4, 0x80001

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 70
    const v3, 0x7f0a00a5

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const/4 v3, 0x2

    new-array v0, v3, [Landroid/text/InputFilter;

    .line 74
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v3, Lcom/sec/android/app/fm/ui/RenameDialog$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/fm/ui/RenameDialog$1;-><init>(Lcom/sec/android/app/fm/ui/RenameDialog;Landroid/content/Context;)V

    aput-object v3, v0, v6

    .line 88
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v7

    .line 89
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 92
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getInputType()I

    move-result v4

    or-int/lit16 v4, v4, 0x4000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 94
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    .line 95
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/sec/android/app/fm/ui/RenameDialog$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/fm/ui/RenameDialog$2;-><init>(Lcom/sec/android/app/fm/ui/RenameDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 110
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 112
    const-string v3, "input_method"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 113
    iput-object p2, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 114
    const v3, 0x7f0a0025

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/ui/RenameDialog;->setTitle(I)V

    .line 123
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->setView(Landroid/view/View;)V

    .line 126
    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/RenameDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0020

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/sec/android/app/fm/ui/RenameDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 127
    const/4 v3, -0x2

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/RenameDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0021

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/sec/android/app/fm/ui/RenameDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 128
    invoke-virtual {p0, v6}, Lcom/sec/android/app/fm/ui/RenameDialog;->setIcon(I)V

    .line 130
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/sec/android/app/fm/ui/RenameDialog$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/fm/ui/RenameDialog$3;-><init>(Lcom/sec/android/app/fm/ui/RenameDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method public getRenamedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/sec/android/app/fm/ui/RenameDialog;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/RenameDialog;->dismiss()V

    .line 155
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 160
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 167
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/sec/android/app/fm/ui/RenameDialog$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/ui/RenameDialog$4;-><init>(Lcom/sec/android/app/fm/ui/RenameDialog;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v1, :cond_0

    .line 179
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v1, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity;->startBargeIn()V

    .line 184
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    .line 185
    return-void
.end method

.method public setChannel(Lcom/sec/android/app/fm/data/Channel;)Lcom/sec/android/app/fm/ui/RenameDialog;
    .locals 2
    .parameter "channel"

    .prologue
    .line 188
    sget-object v0, Lcom/sec/android/app/fm/ui/RenameDialog;->TAG:Ljava/lang/String;

    const-string v1, "setChannel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-nez p1, :cond_0

    .line 190
    sget-object v0, Lcom/sec/android/app/fm/ui/RenameDialog;->TAG:Ljava/lang/String;

    const-string v1, "null channel"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-object p0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/RenameDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/fm/ui/RenameDialog$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/ui/RenameDialog$5;-><init>(Lcom/sec/android/app/fm/ui/RenameDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/fm/ui/RenameDialog$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/ui/RenameDialog$6;-><init>(Lcom/sec/android/app/fm/ui/RenameDialog;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    return-void
.end method
