.class public Lcom/sec/android/app/fm/ui/RenameFileDialog;
.super Landroid/app/AlertDialog;
.source "RenameFileDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final INVALID_CHAR:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBeforeRename:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-class v0, Lcom/sec/android/app/fm/ui/RenameFileDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->TAG:Ljava/lang/String;

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "|"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->INVALID_CHAR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mBeforeRename:Ljava/lang/String;

    .line 50
    const-string v2, ""

    invoke-static {p1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mToast:Landroid/widget/Toast;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, layout:Landroid/view/View;
    const v2, 0x7f070003

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x7f0a00b7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v2, 0x7f070004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    .line 57
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    const v3, 0x80001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 58
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/sec/android/app/fm/ui/RenameFileDialog$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/ui/RenameFileDialog$1;-><init>(Lcom/sec/android/app/fm/ui/RenameFileDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 73
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 75
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getInputType()I

    move-result v3

    or-int/lit16 v3, v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 77
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 78
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 79
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 80
    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 81
    iput-object p2, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    const v2, 0x7f0a0025

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->setTitle(I)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->setView(Landroid/view/View;)V

    .line 86
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0020

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 87
    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0021

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 88
    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->setIcon(I)V

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/sec/android/app/fm/ui/RenameFileDialog$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/ui/RenameFileDialog$2;-><init>(Lcom/sec/android/app/fm/ui/RenameFileDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/ui/RenameFileDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/ui/RenameFileDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/ui/RenameFileDialog;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->INVALID_CHAR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/ui/RenameFileDialog;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method private getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;
    .locals 4
    .parameter "context"

    .prologue
    .line 174
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 175
    .local v0, filterArray:[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/app/fm/ui/RenameFileDialog$6;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/fm/ui/RenameFileDialog$6;-><init>(Lcom/sec/android/app/fm/ui/RenameFileDialog;Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 212
    const/4 v1, 0x1

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 214
    return-object v0
.end method


# virtual methods
.method public getRenamedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    .line 123
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/fm/ui/RenameFileDialog$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/ui/RenameFileDialog$3;-><init>(Lcom/sec/android/app/fm/ui/RenameFileDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->dismiss()V

    .line 115
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 136
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 143
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/sec/android/app/fm/ui/RenameFileDialog$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/ui/RenameFileDialog$4;-><init>(Lcom/sec/android/app/fm/ui/RenameFileDialog;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    .line 156
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 218
    sget-object v0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->TAG:Ljava/lang/String;

    const-string v1, "setFileName()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-nez p1, :cond_0

    .line 220
    sget-object v0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->TAG:Ljava/lang/String;

    const-string v1, "null name"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/fm/ui/RenameFileDialog$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/ui/RenameFileDialog$7;-><init>(Lcom/sec/android/app/fm/ui/RenameFileDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/fm/ui/RenameFileDialog$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/ui/RenameFileDialog$5;-><init>(Lcom/sec/android/app/fm/ui/RenameFileDialog;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    return-void
.end method
