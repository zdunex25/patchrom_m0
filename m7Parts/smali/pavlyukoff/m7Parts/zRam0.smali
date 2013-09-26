.class public Lpavlyukoff/m7Parts/zRam0;
.super Landroid/app/Activity;
.source "zRam0.java"


# instance fields
.field m7Icon:I

.field m7Items:[Ljava/lang/String;

.field m7Title:Ljava/lang/String;

.field sas:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lpavlyukoff/m7Parts/zRam0;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 24
    .local v1, res:Landroid/content/res/Resources;
    const/high16 v2, 0x7f02

    iput v2, p0, Lpavlyukoff/m7Parts/zRam0;->m7Icon:I

    .line 25
    const v2, 0x7f050012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lpavlyukoff/m7Parts/zRam0;->m7Items:[Ljava/lang/String;

    .line 26
    const v2, 0x7f070047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lpavlyukoff/m7Parts/zRam0;->m7Title:Ljava/lang/String;

    .line 27
    const v2, 0x7f050013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lpavlyukoff/m7Parts/zRam0;->sas:[Ljava/lang/String;

    .line 29
    new-instance v0, Lpavlyukoff/m7Parts/zRam0$1;

    invoke-direct {v0, p0}, Lpavlyukoff/m7Parts/zRam0$1;-><init>(Lpavlyukoff/m7Parts/zRam0;)V

    .line 76
    .local v0, myRun:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 78
    return-void
.end method
