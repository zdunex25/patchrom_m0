.class Lpavlyukoff/m7Parts/LinkToggles$1;
.super Ljava/lang/Object;
.source "LinkToggles.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpavlyukoff/m7Parts/LinkToggles;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpavlyukoff/m7Parts/LinkToggles;


# direct methods
.method constructor <init>(Lpavlyukoff/m7Parts/LinkToggles;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lpavlyukoff/m7Parts/LinkToggles$1;->this$0:Lpavlyukoff/m7Parts/LinkToggles;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lpavlyukoff/m7Parts/LinkToggles$1;)Lpavlyukoff/m7Parts/LinkToggles;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lpavlyukoff/m7Parts/LinkToggles$1;->this$0:Lpavlyukoff/m7Parts/LinkToggles;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lpavlyukoff/m7Parts/LinkToggles$1;->this$0:Lpavlyukoff/m7Parts/LinkToggles;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lpavlyukoff/m7Parts/LinkToggles$1;->this$0:Lpavlyukoff/m7Parts/LinkToggles;

    iget v1, v1, Lpavlyukoff/m7Parts/LinkToggles;->m7Icon:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 40
    iget-object v1, p0, Lpavlyukoff/m7Parts/LinkToggles$1;->this$0:Lpavlyukoff/m7Parts/LinkToggles;

    iget-object v1, v1, Lpavlyukoff/m7Parts/LinkToggles;->m7Title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 41
    iget-object v1, p0, Lpavlyukoff/m7Parts/LinkToggles$1;->this$0:Lpavlyukoff/m7Parts/LinkToggles;

    iget-object v1, v1, Lpavlyukoff/m7Parts/LinkToggles;->m7Items:[Ljava/lang/String;

    new-instance v2, Lpavlyukoff/m7Parts/LinkToggles$1$1;

    invoke-direct {v2, p0}, Lpavlyukoff/m7Parts/LinkToggles$1$1;-><init>(Lpavlyukoff/m7Parts/LinkToggles$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    new-instance v1, Lpavlyukoff/m7Parts/LinkToggles$1$2;

    invoke-direct {v1, p0}, Lpavlyukoff/m7Parts/LinkToggles$1$2;-><init>(Lpavlyukoff/m7Parts/LinkToggles$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 86
    return-void
.end method
