.class public Lpavlyukoff/m7Parts/LinkToggles;
.super Landroid/app/Activity;
.source "LinkToggles.java"


# instance fields
.field m7Icon:I

.field m7Intents:[Ljava/lang/String;

.field m7Items:[Ljava/lang/String;

.field m7Names:[Ljava/lang/String;

.field m7Title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lpavlyukoff/m7Parts/LinkToggles;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 28
    .local v1, res:Landroid/content/res/Resources;
    const/high16 v2, 0x7f02

    iput v2, p0, Lpavlyukoff/m7Parts/LinkToggles;->m7Icon:I

    .line 29
    const v2, 0x7f05000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lpavlyukoff/m7Parts/LinkToggles;->m7Items:[Ljava/lang/String;

    .line 30
    const v2, 0x7f07004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lpavlyukoff/m7Parts/LinkToggles;->m7Title:Ljava/lang/String;

    .line 31
    const v2, 0x7f05000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lpavlyukoff/m7Parts/LinkToggles;->m7Names:[Ljava/lang/String;

    .line 32
    const v2, 0x7f05000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lpavlyukoff/m7Parts/LinkToggles;->m7Intents:[Ljava/lang/String;

    .line 34
    new-instance v0, Lpavlyukoff/m7Parts/LinkToggles$1;

    invoke-direct {v0, p0}, Lpavlyukoff/m7Parts/LinkToggles$1;-><init>(Lpavlyukoff/m7Parts/LinkToggles;)V

    .line 88
    .local v0, myRun:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 90
    return-void
.end method
