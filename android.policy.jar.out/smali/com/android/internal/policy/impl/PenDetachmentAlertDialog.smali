.class Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;
.super Landroid/app/AlertDialog;
.source "PenDetachmentAlertDialog.java"


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PenDetachmentAlertDialog"

.field private static isBoxChecked:Z


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->isBoxChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->isBoxChecked:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput-boolean p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->isBoxChecked:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->playPressSound()V

    return-void
.end method

.method private playPressSound()V
    .locals 7

    .prologue
    .line 82
    const-string v0, "/system/media/audio/ui/TW_Touch.ogg"

    .line 84
    .local v0, PRESS_SOUND:Ljava/lang/String;
    const-string v5, "/system/media/audio/ui/TW_Touch.ogg"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 85
    .local v4, soundUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 87
    .local v3, sfx:Landroid/media/Ringtone;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 89
    .local v1, audioManager:Landroid/media/AudioManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 90
    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 98
    .local v2, ringerMode:I
    :goto_0
    const/4 v5, 0x2

    if-ne v5, v2, :cond_0

    .line 99
    if-eqz v3, :cond_0

    .line 100
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v5}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 101
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_1
    return-void

    .line 94
    .end local v2           #ringerMode:I
    :cond_1
    const/4 v2, 0x2

    .restart local v2       #ringerMode:I
    goto :goto_0

    .line 109
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mView:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->setView(Landroid/view/View;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->setInverseBackgroundForced(Z)V

    .line 43
    const v0, 0x1040014

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->setTitle(I)V

    .line 44
    const v0, 0x1080309

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->setIcon(I)V

    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mView:Landroid/view/View;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mCheckBox:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->isBoxChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 49
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mContext:Landroid/content/Context;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$1;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog$2;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method
