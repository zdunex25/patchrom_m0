.class Lpavlyukoff/m7Parts/zRam0$1;
.super Ljava/lang/Object;
.source "zRam0.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpavlyukoff/m7Parts/zRam0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpavlyukoff/m7Parts/zRam0;


# direct methods
.method constructor <init>(Lpavlyukoff/m7Parts/zRam0;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lpavlyukoff/m7Parts/zRam0$1;->this$0:Lpavlyukoff/m7Parts/zRam0;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lpavlyukoff/m7Parts/zRam0$1;)Lpavlyukoff/m7Parts/zRam0;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lpavlyukoff/m7Parts/zRam0$1;->this$0:Lpavlyukoff/m7Parts/zRam0;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lpavlyukoff/m7Parts/zRam0$1;->this$0:Lpavlyukoff/m7Parts/zRam0;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lpavlyukoff/m7Parts/zRam0$1;->this$0:Lpavlyukoff/m7Parts/zRam0;

    iget v1, v1, Lpavlyukoff/m7Parts/zRam0;->m7Icon:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 35
    iget-object v1, p0, Lpavlyukoff/m7Parts/zRam0$1;->this$0:Lpavlyukoff/m7Parts/zRam0;

    iget-object v1, v1, Lpavlyukoff/m7Parts/zRam0;->m7Title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 36
    iget-object v1, p0, Lpavlyukoff/m7Parts/zRam0$1;->this$0:Lpavlyukoff/m7Parts/zRam0;

    iget-object v1, v1, Lpavlyukoff/m7Parts/zRam0;->m7Items:[Ljava/lang/String;

    new-instance v2, Lpavlyukoff/m7Parts/zRam0$1$1;

    invoke-direct {v2, p0}, Lpavlyukoff/m7Parts/zRam0$1$1;-><init>(Lpavlyukoff/m7Parts/zRam0$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    new-instance v1, Lpavlyukoff/m7Parts/zRam0$1$2;

    invoke-direct {v1, p0}, Lpavlyukoff/m7Parts/zRam0$1$2;-><init>(Lpavlyukoff/m7Parts/zRam0$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 74
    return-void
.end method
